cask "digikam" do
  arch arm: "Qt6-MacOS-arm64", intel: "Qt5-MacOS-x86_64"

  version "8.7.0"
  sha256 arm:   "0956433185d54db6a87edb6438df4831aa11be4a267b3ac44f91c71369571e79",
         intel: "5fd9239416264b996c27ace4b7c920f40a56bfde5cc5001fdc2941422b88c376"

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
              "/Applications/digiKam.org/digikam.app",
              "/Applications/digiKam.org/showfoto.app",
            ]

  zap trash: [
    "~/Library/Application Support/digikam",
    "~/Library/Caches/digikam",
    "~/Library/Preferences/digikam.plist",
    "~/Library/Preferences/digikamrc",
    "~/Library/Saved Application State/digikam.savedState",
  ]
end
