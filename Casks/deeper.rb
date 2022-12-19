cask "deeper" do
  on_el_capitan :or_older do
    version "2.1.4"
    sha256 "3dc9607644872da14a0b6f20722e36d0cb6cb7ab2528f86de1cf059086cf2848"
  end
  on_sierra do
    version "2.2.3"
    sha256 "33fee21b65279e4459b6469dbc68f0c6df91663ed26d6b62042b21883efda0ed"
  end
  on_high_sierra do
    version "2.3.3"
    sha256 "08ac5820428bcce74548786e8fda947edfaa31cf4a822d5c443835e73a11dd3b"
  end
  on_mojave do
    version "2.4.8"
    sha256 "13dbe7bd680963aca91c40a4fd1e16648b63538f3213692db22dd91a3e3f2c89"
  end
  on_catalina do
    version "2.6.0"
    sha256 "302c91c7995364bd02b71613ed440c1480d905637ba02da661cc4e53402643b3"
  end
  on_big_sur do
    version "2.7.1"
    sha256 "e4de32606e76da69805cf3288821117efe5fb4c6e2fa6759e41dd25c6173dc5c"
  end
  on_monterey do
    version "2.8.0"
    sha256 "d7cff6143a6689e332ae68b5495ee1d62c65be2040393daf05f400eeb17ecba8"
  end
  on_ventura :or_newer do
    version "2.8.6"
    sha256 "84d62113b507970ef89a676182df9fe8b5fc7aec91815b0bdb570b9102bae782"
  end

  url "https://www.titanium-software.fr/download/#{MacOS.version.to_s.delete(".")}/Deeper.dmg"
  name "Deeper"
  desc "Tool to enable and disable hidden functions of Finder and other apps"
  homepage "https://www.titanium-software.fr/en/deeper.html"

  livecheck do
    url :homepage
    regex(/>\s*Deeper\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+#{MacOS.version}\s*</i)
  end

  # This software has releases for specific versions of macOS. Running a version for a different OS is dangerous.
  depends_on macos: "<= :ventura"

  app "Deeper.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Deeper Help*",
    "~/Library/Logs/Deeper.log",
    "~/Library/Preferences/com.titanium.Deeper.plist",
    "~/Library/Saved Application State/com.titanium.Deeper.savedState",
  ]
end
