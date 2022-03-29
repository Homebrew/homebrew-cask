cask "softube-central" do
  version "1.5.11"
  sha256 "153d24700bf2689dd73eac2abace18ee8d067be701a2b773a24ca940ed02c96b"

  url "https://softubestorage.b-cdn.net/softubecentral/Softube%20Central-#{version}.pkg",
      verified: "softubestorage.b-cdn.net/"
  name "Softube Central"
  desc "Installer for installation and license activation of Softube products"
  homepage "https://www.softube.com/softube-central/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true
  depends_on cask: "ilok-license-manager"

  pkg "Softube Central-#{version}.pkg"

  uninstall quit:    [
    "org.softube.com.softubecentral",
    "com.softube.Console1OSD_Release",
  ],
            pkgutil: [
              "com.softube.pkg.*",
              "com.softube.installerdaemon.helper",
              "org.softube.com.softubecentral",
            ]

  zap trash: [
    "/Library/Application Support/Softube",
    "~/Library/Application Support/Softube",
    "~/Library/Application Support/softubecentral",
  ]
end
