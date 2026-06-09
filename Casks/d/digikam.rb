cask "digikam" do
  arch arm: "Qt6-MacOS-arm64", intel: "Qt5-MacOS-x86_64"

  version "9.1.0"
  sha256 arm:   "280fb7f8bd69f512946b1a5acc63a4f4fb66aed464afc2a03a3e4355150cc8ac",
         intel: "d5edf0f8e498dad0e6748c3bdc9a55433bf8b43601d8467704f47cc995b3f4a2"

  url "https://download.kde.org/stable/digikam/#{version}/digiKam-#{version}-#{arch}.pkg",
      verified: "kde.org/stable/digikam/"
  name "digiKam"
  desc "Digital photo manager"
  homepage "https://www.digikam.org/"

  livecheck do
    url "https://download.kde.org/stable/digikam/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

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
