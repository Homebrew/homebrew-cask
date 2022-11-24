cask "ngrok" do
  arch arm: "arm64", intel: "amd64"

  on_intel do
    version "3.1.0,gMHPWQMhW1J,a"
    sha256 "3508dbb061560aee046df7603701d9ba61d9600d15f3688d602bfb7ba1f3e4c0"
  end
  on_arm do
    version "3.1.0,7gHuLibjv89,a"
    sha256 "be754cbeddd23201f2e3fdb8258e53624ad0600211a084f918e86274bad85864"
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
