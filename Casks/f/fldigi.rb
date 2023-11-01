cask "fldigi" do
  version "4.2.03"

  on_sierra :or_older do
    sha256 "1d81c16cee9527d1dcec4084f6cfc8371e44c7e127c96b562f9944ba619770ed"

    url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_LI.dmg"
  end
  on_high_sierra :or_newer do
    sha256 "7629d62bacbd7d4b4e500d9220f21081aea3c638559218cc6cb818c2e597370c"

    url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_VN.dmg"
  end

  name "fldigi"
  desc "Ham radio digital modem application"
  homepage "https://sourceforge.net/projects/fldigi/files/fldigi/"

  livecheck do
    url "https://sourceforge.net/projects/fldigi/rss?path=/fldigi"
    regex(/fldigi[._-]v?(\d+(?:\.\d+)+)[._-].+\.dmg/i)
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
