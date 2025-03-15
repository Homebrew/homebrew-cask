cask "digikam" do
  arch arm: "Qt6-MacOS-arm64", intel: "Qt5-MacOS-x86_64"

  version "8.6.0"
  sha256 arm:   "2cd60745e9f6b140285fed592682ba964f5e5f09095f11b34fac85238f4ce5bb",
         intel: "97a7af71871c4908e9b933212e074f0bce35c2a53f823196cf1888ef3b029988"

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
end
