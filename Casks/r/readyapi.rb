cask "readyapi" do
  arch arm: "arm64", intel: "x64"

  version "3.64.0"
  sha256 arm:   "e4dfb11620d95c6ab1c985fb89d64e1ca44dddebad6cba850de28ba8aac53f29",
         intel: "9af43c2f6849cac8a4b7348f4d42ab40ec00f70983dacaa90a7b1112604c8dfd"

  url "https://dl.eviware.com/ready-api/#{version}/ReadyAPI-#{arch}-#{version}.dmg",
      verified: "dl.eviware.com/ready-api/"
  name "ReadyAPI Desktop"
  desc "Automated API testing platform"
  homepage "https://smartbear.com/product/ready-api/"

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
