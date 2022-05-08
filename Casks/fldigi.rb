cask "fldigi" do
  version "4.1.22"
  sha256 "019ac3a188ad6378efddb88f2f6fb072dc9dbdcf7c5b7e68aaa071477ba926d7"

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
