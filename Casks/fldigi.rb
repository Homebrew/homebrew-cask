cask "fldigi" do
  version "4.1.20"
  sha256 "00a9fe74e1eff23d4fa003c2919b46cae6fb54436b2df08706874e80ef28b000"

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_bs.dmg"
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
