cask "resolume-arena" do
  version "7.15.0,23381"
  sha256 "4d200deb9bde2e3b9e54720111e9af358c4a7944ae60d2499dae5c3758a7efc5"

  url "https://dd5sgwxv3xok.cloudfront.net/Resolume_Arena_#{version.major_minor_patch.dots_to_underscores}_rev_#{version.csv.second}_Installer.dmg",
      verified: "dd5sgwxv3xok.cloudfront.net/"
  name "Resolume Arena"
  desc "Video mapping software"
  homepage "https://resolume.com/"

  livecheck do
    url "https://resolume.com/download/"
    strategy :page_match do |page|
      page.scan(/href=.*?Arena[._-]v?(\d+(?:[._-]\d+)+)[._-]rev[._-](\d+).+\.dmg/i)
          .map { |match| "#{match[0].tr("_", ".")},#{match[1]}" }
    end
  end

  pkg "Resolume Arena Installer.pkg"

  uninstall pkgutil:   [
              "com.resolume.pkg.ResolumeArena.*",
              "com.resolume.pkg.ResolumeDXV",
              "com.resolume.pkg.ResolumeQuickLook",
              "com.resolume.pkg.ResolumeAlley",
              "com.resolume.pkg.ResolumeWireNodes",
              "com.resolume.pkg.ResolumeCommon",
              "com.resolume.pkg.ResolumeWire",
            ],
            delete:    "/Applications/Resolume Arena #{version.major}",
            signal:    ["TERM", "com.resolume.arena"],
            launchctl: "com.resolume.arena"

  zap pkgutil: [
    "com.resolume.pkg.ResolumeDXV",
    "com.resolume.pkg.ResolumeQuickLook",
  ]
end
