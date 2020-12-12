cask "digikam" do
  version "7.1.0"
  sha256 "bea457513afb0e08b6d1fa0b9abd67c47d34fa2d141377f361c09176e7ae3b94"

  # kde.org/stable/digikam/ was verified as official when first introduced to the cask
  url "https://download.kde.org/stable/digikam/#{version}/digiKam-#{version}-MacOS-x86-64.pkg"
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
