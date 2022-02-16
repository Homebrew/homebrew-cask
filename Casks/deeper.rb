cask "deeper" do
  if MacOS.version <= :yosemite
    version "2.0.4"
    sha256 "70a8ae37e6a62541a03b1b144ff92bac38585ce936b1acc12ce484416db13b8f"
  elsif MacOS.version <= :el_capitan
    version "2.1.4"
    sha256 "3dc9607644872da14a0b6f20722e36d0cb6cb7ab2528f86de1cf059086cf2848"
  elsif MacOS.version <= :sierra
    version "2.2.3"
    sha256 "33fee21b65279e4459b6469dbc68f0c6df91663ed26d6b62042b21883efda0ed"
  elsif MacOS.version <= :high_sierra
    version "2.3.3"
    sha256 "08ac5820428bcce74548786e8fda947edfaa31cf4a822d5c443835e73a11dd3b"
  elsif MacOS.version <= :mojave
    version "2.4.8"
    sha256 "13dbe7bd680963aca91c40a4fd1e16648b63538f3213692db22dd91a3e3f2c89"
  elsif MacOS.version <= :catalina
    version "2.6.0"
    sha256 "302c91c7995364bd02b71613ed440c1480d905637ba02da661cc4e53402643b3"
  elsif MacOS.version <= :big_sur
    version "2.7.0"
    sha256 "695a1572294fb535bbf266f11cc1d3e1838995d762b4d841f2f7d77801e7a546"
  else
    version "2.7.7"
    sha256 "e87c69c5f444334a1a4bc58f73462c8073cadb96a3b9f3ab786e9359472e72e8"
  end

  url "https://www.titanium-software.fr/download/#{MacOS.version.to_s.delete(".")}/Deeper.dmg"
  name "Deeper"
  desc "Tool to enable and disable hidden functions of Finder and other apps"
  homepage "https://www.titanium-software.fr/en/deeper.html"

  livecheck do
    url :homepage
    regex(/>\s*Deeper\s+v?(\d+(?:\.\d+)+)\s+for\s+[\w\s.-]*\s+#{MacOS.version}\s*</i)
  end

  # Unusual case: The software may stop working, or may be dangerous to run, on the latest macOS release.
  depends_on macos: "<= :monterey"

  app "Deeper.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Deeper Help*",
    "~/Library/Logs/Deeper.log",
    "~/Library/Preferences/com.titanium.Deeper.plist",
    "~/Library/Saved Application State/com.titanium.Deeper.savedState",
  ]
end
