cask "fldigi" do
  version "4.1.27"

  on_sierra :or_older do
    sha256 "1d81c16cee9527d1dcec4084f6cfc8371e44c7e127c96b562f9944ba619770ed"

    url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_LI.dmg"
  end
  on_high_sierra :or_newer do
    sha256 "3f28609899c085d182d121441ffa450d7ed95aac10bb6faeb12d90f20a3f9a7a"

    url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_VN.dmg"
  end

  name "fldigi"
  desc "Ham radio digital modem application"
  homepage "https://sourceforge.net/projects/fldigi/files/fldigi/"

  livecheck do
    url "https://sourceforge.net/projects/fldigi/rss?path=/fldigi"
    regex(/fldigi[._-]v?(\d+(?:\.\d+)+)[._-]vn\.dmg/i)
    strategy :page_match
  end

  app "fldigi.app"
  app "flarq.app"

  preflight do
    staged_path.glob("fldigi-*.app").first.rename(staged_path/"fldigi.app")
    staged_path.glob("flarq-*.app").first.rename(staged_path/"flarq.app")
  end

  zap trash: "~/.fldigi"
end
