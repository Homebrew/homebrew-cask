cask "ngrok" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  if Hardware::CPU.intel?
    version "3.0.4,8TxeB1dzvEz,a"
    sha256 "487241b21e81a27268e48c4a2a97e48e92ad81ce7b07ba4fa643d40d80d46248"
  else
    version "3.0.5,4TgG8D5ExeX,a"
    sha256 "4ea876c44fe8f0bf98add52054454e6c7effba7d616dd93bb34038fa3d2fbf8a"
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
