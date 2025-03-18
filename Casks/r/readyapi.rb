cask "readyapi" do
  arch arm: "arm64", intel: "x64"

  version "3.59.0"
  sha256 arm:   "be7d7eee034963c3bd1d942e681a6c72a39e757ea7fb0318da1566bf42c5c1d8",
         intel: "82278b0ef7a1d48ca9bf1c69cd4c32f878cac5fde72881f8a2826ca264b080a6"

  url "https://dl.eviware.com/ready-api/#{version}/ReadyAPI-#{arch}-#{version}.dmg",
      verified: "dl.eviware.com/ready-api/"
  name "ReadyAPI Desktop"
  desc "Automated API testing platform"
  homepage "https://smartbear.com/product/ready-api/overview/"

  livecheck do
    url "https://support.smartbear.com/readyapi/docs/en/what-s-new/version-history.html"
    regex(/>\s*Ready(?:!\s+)?API\s+v?(\d+(?:\.\d+)+)/i)
  end

  installer script: {
    executable: "ReadyAPI #{version} Installer.app/Contents/MacOS/JavaApplicationStub",
    args:       ["-q"],
  }

  uninstall delete: [
    "/Applications/ReadyAPI-#{version}.app",
    "~/Desktop/ReadyAPI #{version}",
  ]

  zap trash: [
    "~/Library/Application Support/ReadyAPI-#{version}",
    "~/Library/Preferences/com.smartbear.ready.plist",
  ]
end
