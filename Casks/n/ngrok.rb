cask "ngrok" do
  arch arm: "arm64", intel: "amd64"

  on_arm do
    version "3.3.5,gdMJFDtw8of,a"
    sha256 "9da24a7bfa3be001b81a125276362e3f54f788f29410a2392a03fce91b27538f"
  end
  on_intel do
    version "3.3.5,gdMJFDtw8of,a"
    sha256 "9da24a7bfa3be001b81a125276362e3f54f788f29410a2392a03fce91b27538f"
  end

  url "https://bin.equinox.io/#{version.csv.third}/#{version.csv.second}/ngrok-v#{version.major}-#{version.csv.first}-stable-darwin-#{arch}.zip",
      verified: "bin.equinox.io/"
  name "ngrok"
  desc "Reverse proxy, secure introspectable tunnels to localhost"
  homepage "https://ngrok.com/"

  livecheck do
    url "https://dl.equinox.io/ngrok/ngrok-v#{version.major}/stable/archive"
    regex(%r{href=.*?/([^/]+)/([^/]+)/ngrok[._-]v#{version.major}[._-]v?(\d+(?:\.\d+)+)[._-]darwin[._-]#{arch}\.zip}i)
    strategy :page_match do |page|
      page.scan(regex).map { |match| "#{match[2]},#{match[1]},#{match[0]}" }
    end
  end

  binary "ngrok"

  postflight do
    set_permissions "#{staged_path}/ngrok", "0755"
  end

  zap trash: [
    "~/.ngrok#{version.major}",
    "~/Library/Application Support/ngrok",
  ]

  caveats <<~EOS
    To install shell completions, add this to your profile:
      if command -v ngrok &>/dev/null; then
        eval "$(ngrok completion)"
      fi
  EOS
end
