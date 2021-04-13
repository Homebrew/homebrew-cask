cask "digikam" do
  version "7.2.0"
  sha256 "a41b5f456b3f416921ed8361edc7a4cd35dfb29fcb8c5aeffd637b569ed6c35b"

  url "https://download.kde.org/stable/digikam/#{version}/digiKam-#{version}-MacOS-x86-64.pkg",
      verified: "kde.org/stable/digikam/"
  appcast "https://download.kde.org/stable/digikam/"
  name "digiKam"
  homepage "https://www.digikam.org/"

  pkg "digiKam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: "org.kde.digikam",
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
