cask "ngrok" do
  arch arm: "arm64", intel: "amd64"

  on_intel do
    version "3.0.6,mStkVrofaG9,a"
    sha256 "26695c41b93e6437b797fcc0f6e78242ec8c665e8e57f436aa6305b9237e3ac1"
  end
  on_arm do
    version "3.0.7,3qk13uQpAwh,a"
    sha256 "c0294214fab0ef18111b2e00c2f76c0c90ec291f0fca43cf46a6745b6d9765ec"
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
