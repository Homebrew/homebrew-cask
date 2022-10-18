cask "digikam" do
  version "7.8.0"
  sha256 "2c70e82e36c0d5d15d701aaad8d4c5af2b4dcd85de218d776a50b9331b02d487"

  url "https://download.kde.org/stable/digikam/#{version}/digiKam-#{version}-MacOS-x86-64.pkg",
      verified: "kde.org/stable/digikam/"
  name "digiKam"
  desc "Digital photo manager"
  homepage "https://www.digikam.org/"

  livecheck do
    url "https://download.kde.org/stable/digikam/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  pkg "digiKam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: [
              "org.digiKam",
              "org.kde.digikam",
            ],
            delete:  [
              "/Applications/digikam.app",
              "/Applications/showfoto.app",
            ]

  zap trash: [
    "~/Library/Application Support/digikam",
    "~/Library/Caches/digikam",
    "~/Library/Preferences/digikam.plist",
    "~/Library/Preferences/digikamrc",
    "~/Library/Saved Application State/digikam.savedState",
  ]
end
