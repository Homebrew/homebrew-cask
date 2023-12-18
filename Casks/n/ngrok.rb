cask "ngrok" do
  arch arm: "arm64", intel: "amd64"

  on_arm do
    version "3.5.0,6bzFxjd3ikr,a"
    sha256 "d20649360b7e65536322b2b8c84516c051a563511d26601d5958a7ee35ce0b74"
  end
  on_intel do
    version "3.5.0,253zd1V6HPA,a"
    sha256 "829610905276deb6f0a2b1c62f61c91c229da6fbf79b9e16507d65b5f69b73cd"
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
