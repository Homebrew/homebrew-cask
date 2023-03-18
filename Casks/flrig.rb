cask "flrig" do
  version "1.4.8"

  on_sierra :or_older do
    sha256 "03cfdcefe90784f5f6fc643817a22d9590d7508ba03cd5cde0c5168723921f30"
    url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version}_LI.dmg"
  end
  on_high_sierra :or_newer do
    sha256 "6ee34eeb589ac00a82d74ac2146fdfbf2295eb24f0b1c9bff96ed1630e086c73"
    url "https://downloads.sourceforge.net/fldigi/fldigi/flrig-#{version}_U.dmg"
  end

  name "flrig"
  desc "Ham radio rig control"
  homepage "https://sourceforge.net/projects/fldigi/files/flrig/"

  livecheck do
    url "https://sourceforge.net/projects/fldigi/rss?path=/flrig"
    regex(/flrig[._-]v?(\d+(?:\.\d+)+)\w*\.dmg/i)
    strategy :page_match
  end

  app "flrig.app"

  preflight do
    staged_path.glob("flrig-*.app").first.rename(staged_path/"flrig.app")
  end

  zap trash: "~/.flrig"
end
