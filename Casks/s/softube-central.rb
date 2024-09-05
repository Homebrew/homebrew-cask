cask "softube-central" do
  version "1.11.1"
  sha256 "0aaeb48c3e66e8e7ec614e06cada783433f0669e607b5b59a626dfe56457a3e4"

  url "https://softubestorage.b-cdn.net/softubecentraldata/softubecentral/Softube%20Central-#{version}-universal.pkg",
      verified: "softubestorage.b-cdn.net/"
  name "Softube Central"
  desc "Installer for installation and license activation of Softube products"
  homepage "https://www.softube.com/softube-central/"

  livecheck do
    url "https://www.softube.com/installers"
    regex(/Softube%20Central[._-]v?(\d+(?:\.\d+)+)[._-]universal\.pkg/i)
  end

  auto_updates true
  depends_on cask: "ilok-license-manager"

  pkg "Softube Central-#{version}-universal.pkg"

  uninstall launchctl: [
              "com.paceap.eden.licensed",
              "com.paceap.eden.licensed.agent",
            ],
            quit:      [
              "com.softube.Console1OSD_Release",
              "org.softube.com.softubecentral",
            ],
            pkgutil:   [
              "com.paceap.pkg.eden.activationexperience",
              "com.paceap.pkg.eden.iLokLicenseManager",
              "com.paceap.pkg.eden.licensed",
              "com.softube.installerdaemon.helper",
              "org.softube.com.softubecentral",
            ]

  zap trash: [
    "/Library/Application Support/Softube",
    "~/Library/Application Support/Softube",
    "~/Library/Application Support/softubecentral",
  ]
end
