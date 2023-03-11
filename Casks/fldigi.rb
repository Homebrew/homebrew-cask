cask "fldigi" do
  version "4.1.25"
  sha256 "5b30db92b12073123b0f432e3e85530869ccf837d8cd00e9e19d056134f5534e"

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_U.dmg"
  name "fldigi"
  desc "Ham radio digital modem application"
  homepage "https://sourceforge.net/projects/fldigi/files/fldigi/"

  livecheck do
    url "https://sourceforge.net/projects/fldigi/rss?path=/fldigi"
    strategy :page_match
    regex(/fldigi-(\d+(?:\.\d+)*)_u\.dmg/i)
  end

  app "fldigi.app"
  app "flarq.app"

  preflight do
    staged_path.glob("fldigi-*.app").first.rename(staged_path/"fldigi.app")
    staged_path.glob("flarq-*.app").first.rename(staged_path/"flarq.app")
  end

  zap trash: "~/.fldigi"
end
