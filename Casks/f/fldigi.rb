cask "fldigi" do
  version "4.2.03"

  on_sierra :or_older do
    sha256 "d9ca65970968d415bf56d783b4383188297f735c53fc8d379cfb735b3e062974"

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
