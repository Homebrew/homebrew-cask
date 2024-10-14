cask "fldigi" do
  version "4.2.06"

  on_sierra :or_older do
    sha256 "9826dd950661e3261a4233f53e28199d439b83008de178e18f35973ce5d5d10b"

    url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_LI.dmg",
        verified: "sourceforge.net/fldigi/"
  end
  on_high_sierra :or_newer do
    sha256 "eb18e4d28ca86ad0667af80dcb8b973a7b1875fdcfc9df1b64203ce12237d322"

    url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}_VN.dmg",
        verified: "sourceforge.net/fldigi/"
  end

  name "fldigi"
  name "flarq"
  desc "Ham radio digital modem application"
  homepage "http://www.w1hkj.com/"

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
