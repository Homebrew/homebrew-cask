cask "digikam" do
  version "7.2.0"
  sha256 "a41b5f456b3f416921ed8361edc7a4cd35dfb29fcb8c5aeffd637b569ed6c35b"

  url "https://download.kde.org/stable/digikam/#{version}/digiKam-#{version}-MacOS-x86-64.pkg",
      verified: "kde.org/stable/digikam/"
  appcast "https://download.kde.org/stable/digikam/"
  name "digiKam"
  homepage "https://www.digikam.org/"

  pkg "digiKam-#{version}-MacOS-x86-64.pkg"

  uninstall pkgutil: "org.freedesktop.digikam",
            delete:  [
              "/Applications/digikam.app",
              "/Applications/showfoto.app",
            ]
end
