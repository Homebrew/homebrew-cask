cask "readyapi" do
  arch arm: "arm64", intel: "x64"

  version "3.47.0"
  sha256 arm:   "f55e1703a1f1981651a42be1598502046a9f4e4e5cd476de1843c88b1d1da490",
         intel: "bba0d066f0f500a8a743ec31dd8a1e5da1531f2cc5e39eeee615bad53d139142"

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
