cask "digikam" do
  version "7.6.0"
  sha256 "df816d2e99034200f4175478539813b867e7ba2aa91fa13503d1a2a2b2fa52ec"

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
