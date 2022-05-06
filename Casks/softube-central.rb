cask "softube-central" do
  version "1.6.2"
  sha256 "d3b28ab020dddc24c226fad5c8921ac5dddcabca18857404e8545d8128de668f"

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
