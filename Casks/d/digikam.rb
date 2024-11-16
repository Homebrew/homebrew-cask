cask "digikam" do
  arch arm: "Qt6-MacOS-arm64", intel: "Qt5-MacOS-x86_64"

  version "8.5.0"
  sha256 arm:   "96f7a14870ae5ed962670354549273274f4cdd1699bf68bdcca486a6b10f71af",
         intel: "fe990ab364205c10f70deea221a3d407e6e9ca2a4fde1c948d0cd432a92506da"

  url "https://download.kde.org/stable/digikam/#{version}/digiKam-#{version}-#{arch}.pkg",
      verified: "kde.org/stable/digikam/"
  name "digiKam"
  desc "Digital photo manager"
  homepage "https://www.digikam.org/"

  livecheck do
    url "https://download.kde.org/stable/digikam/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  pkg "digiKam-#{version}-#{arch}.pkg"

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
