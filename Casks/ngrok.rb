cask "ngrok" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  if Hardware::CPU.intel?
    version "3.0.5,kDrytDaoX6f,a"
    sha256 "c93d7db70be016558d8f3147a39d08e2120ae1c974cd65a60c2ed4cc42bfe129"
  else
    version "3.0.6,91H3cQoKGUw,a"
    sha256 "f17dd2755abc3db298bfac5279c0d633d08fc96e69708a332d9c65b57328a9f6"
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

  zap trash: "~/.ngrok#{version.major}"
end
