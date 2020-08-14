cask "softube-central" do
  version "1.4.1"
  sha256 "66fd8c3c3535f636f75196a309e2ef0ee3ca1b43b01db8a23fc5cdc00b4ff4e8"

  # softubestorage.b-cdn.net/ was verified as official when first introduced to the cask
  url "https://softubestorage.b-cdn.net/softubecentral/Softube%20Central-#{version}.pkg"
  name "Softube Central"
  homepage "https://www.softube.com/softube-central/"

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
