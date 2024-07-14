cask "digikam" do
  version "8.4.0"
  sha256 "eb6502c93a2a843759b219f5127a82b1d146ff2acfdb2708140e78bbbce589e0"

  url "https://download.kde.org/stable/digikam/#{version}/digiKam-#{version}-Qt5-MacOS-x86_64.pkg",
      verified: "kde.org/stable/digikam/"
  name "digiKam"
  desc "Digital photo manager"
  homepage "https://www.digikam.org/"

  livecheck do
    url "https://download.kde.org/stable/digikam/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  pkg "digiKam-#{version}-Qt5-MacOS-x86_64.pkg"

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

  caveats do
    requires_rosetta
  end
end
