cask "ngrok" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  if Hardware::CPU.intel?
    version "3.0.3,2S3sS52tHuW,a"
    sha256 "1424c01ee692ae8561ede345a5147f95575e1e32791e9a860cf8ce864b506b59"
  else
    version "3.0.2,ab5xesMCqU8,a"
    sha256 "8db8889edbdb60d43dc0be0d8b936550a921a7a8ddea74e54d87f3480193616b"
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
