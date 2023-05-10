cask "ngrok" do
  arch arm: "arm64", intel: "amd64"

  on_arm do
    version "3.3.0,d3cF1MADy4n,a"
    sha256 "f041d791f7292ae900f1589fea623bce2a947c28bdc3c50cf520f47347f82f90"
  end
  on_intel do
    version "3.3.0,n8BKDhBpoJP,a"
    sha256 "47fbb6bd6ba66f84669441b014ea69e438838cfdeb1216604faf29caceb94bfb"
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
end
