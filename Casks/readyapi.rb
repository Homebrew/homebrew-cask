cask "readyapi" do
  arch arm: "arm64", intel: "x64"

  version "3.44.0"
  sha256 arm:   "406a9bf1fff015bb8f0d8f4d5d5d271fd7e52af3ae4b89b55a37afda109893b6",
         intel: "a2965e93e23872dded3bb2995f5d4ad0c29777742efd3d6b597bc15ae7a2c797"

  url "https://dl.eviware.com/ready-api/#{version}/ReadyAPI-#{arch}-#{version}.dmg",
      verified: "dl.eviware.com/ready-api/"
  name "ReadyAPI Desktop"
  desc "Automated API testing platform"
  homepage "https://smartbear.com/product/ready-api/overview/"

  livecheck do
    url "https://support.smartbear.com/readyapi/docs/general-info/whats-new.html"
    regex(/(\d+(?:\.\d+)+)\s\(latest\sversion\)/i)
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
