cask "digikam" do
  version "8.3.0"
  sha256 "20f0f8cfa757d19d3d955ba84e8fe67c7690b6f043ec3a9be948657ba05e8a23"

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
