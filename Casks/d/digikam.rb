cask "digikam" do
  arch arm: "Qt6-MacOS-arm64", intel: "Qt5-MacOS-x86_64"

  version "8.8.0"
  sha256 arm:   "121001a74b9069e7be22eda13f20a3ded98409203c59e658d25695b3986e71ac",
         intel: "fd4058246b670ecb7dffe10afbe3ee9bb51419980574ac2ebc879dca94c8b573"

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
