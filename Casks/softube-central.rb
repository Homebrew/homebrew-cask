cask "softube-central" do
  version "1.9.0"
  sha256 "ae3c05350332c638ae566216624f672ab86ad366e88334cba079890e920d8c3f"

  url "https://softubestorage.b-cdn.net/softubecentral/Softube%20Central-#{version}-universal.pkg",
      verified: "softubestorage.b-cdn.net/"
  name "Softube Central"
  desc "Installer for installation and license activation of Softube products"
  homepage "https://www.softube.com/softube-central/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true
  depends_on cask: "ilok-license-manager"

  pkg "Softube Central-#{version}-universal.pkg"

  uninstall quit:      [
              "com.softube.Console1OSD_Release",
              "org.softube.com.softubecentral",
            ],
            pkgutil:   [
              "com.paceap.pkg.eden.activationexperience",
              "com.paceap.pkg.eden.iLokLicenseManager",
              "com.paceap.pkg.eden.licensed",
              "com.softube.installerdaemon.helper",
              "org.softube.com.softubecentral",
            ],
            launchctl: [
              "com.paceap.eden.licensed",
              "com.paceap.eden.licensed.agent",
            ]

  zap trash: [
    "/Library/Application Support/Softube",
    "~/Library/Application Support/Softube",
    "~/Library/Application Support/softubecentral",
  ]
end
