cask "fldigi" do
  version "4.1.18"
  sha256 "9bcf2843c67f1e3ce75eaeae6739fd14fb908bcdc1bd0e0b95b1aaf5ab8781de"

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_x86_64.dmg"
  name "fldigi"
  desc "Ham radio digital modem application"
  homepage "https://sourceforge.net/projects/fldigi/files/fldigi/"

  livecheck do
    url "https://sourceforge.net/projects/fldigi/rss?path=/fldigi"
    strategy :page_match
    regex(/fldigi-(\d+(?:\.\d+)*)_x86_64\.dmg/i)
  end

  app "fldigi.app"
  app "flarq.app"

  preflight do
    staged_path.glob("fldigi-*.app").first.rename(staged_path/"fldigi.app")
    staged_path.glob("flarq-*.app").first.rename(staged_path/"flarq.app")
  end

  zap trash: "~/.fldigi"
end
