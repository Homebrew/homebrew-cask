cask "softube-central" do
  version "1.11.0"
  sha256 "1870f6fab2ed6849778d19d1f3003a1ebcad7a3206020ecdf832c73a173eb34b"

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
