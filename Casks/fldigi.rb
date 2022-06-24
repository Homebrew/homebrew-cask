cask "fldigi" do
  version "4.1.23"
  sha256 "4aa71ef9bdd6d78770a7cfa8c1ae1f5625030e78f40cd9e8adb3a04387a21bf9"

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_BS.dmg"
  name "fldigi"
  desc "Ham radio digital modem application"
  homepage "https://sourceforge.net/projects/fldigi/files/fldigi/"

  livecheck do
    url "https://sourceforge.net/projects/fldigi/rss?path=/fldigi"
    strategy :page_match
    regex(/fldigi-(\d+(?:\.\d+)*)_bs\.dmg/i)
  end

  app "fldigi.app"
  app "flarq.app"

  preflight do
    staged_path.glob("fldigi-*.app").first.rename(staged_path/"fldigi.app")
    staged_path.glob("flarq-*.app").first.rename(staged_path/"flarq.app")
  end

  zap trash: "~/.fldigi"
end
