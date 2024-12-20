cask "ngrok" do
  arch arm: "arm64", intel: "amd64"

  on_arm do
    version "3.19.0,6eUJ9CKgUtA,a"
    sha256 "cd8675fd3f89160b36c4fc1cf0e38dd7d294982235edceaa2ed203417a9cf9fc"
  end
  on_intel do
    version "3.19.0,59HYdr4iC4K,a"
    sha256 "12b3dfdbadbf7fc7ab026f6350b80f5e41458105fe8fbece37d2f0005494dcfe"
  end

  url "https://bin.equinox.io/#{version.csv.third}/#{version.csv.second}/ngrok-v#{version.major}-#{version.csv.first}-darwin-#{arch}.zip",
      verified: "bin.equinox.io/"
  name "ngrok"
  desc "Reverse proxy, secure introspectable tunnels to localhost"
  homepage "https://ngrok.com/"

  livecheck do
    url "https://dl.equinox.io/ngrok/ngrok-v#{version.major}/stable/archive"
    regex(%r{href=.*?/([^/]+)/([^/]+)/ngrok[._-]v#{version.major}[._-]v?(\d+(?:\.\d+)+)[._-]darwin[._-]#{arch}\.zip}i)
    strategy :page_match do |page, regex|
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
