cask "readyapi" do
  version "3.30.0"
  sha256 "4cc64f880880b822734b5da80a0c708f936f0eb1ea097f8b108b5d7583cdef4a"

  url "https://dl.eviware.com/ready-api/#{version}/ReadyAPI-#{version}.dmg",
      verified: "dl.eviware.com/ready-api"
  name "ReadyAPI Desktop"
  desc "Automated API Testing Platform"
  homepage "https://smartbear.com/product/ready-api/overview/"

  livecheck do
    url "https://dl.eviware.com/version-update/readyapi-updates.xml"
    regex(/fileName=.*?ReadyAPI[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
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
