cask "softube-central" do
  version "1.4.2"
  sha256 "163e9d50110d126d28a98743468c1e9e2d772adf8d6f87db6c1fa68efb0b3db5"

  # softubestorage.b-cdn.net/ was verified as official when first introduced to the cask
  url "https://softubestorage.b-cdn.net/softubecentral/Softube%20Central-#{version}.pkg"
  name "Softube Central"
  desc "Installer for installation and license activation of Softube products"
  homepage "https://www.softube.com/softube-central/"

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
