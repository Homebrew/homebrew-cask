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
    regex(%r{url=.*?/fldigi[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg}i)
  end

  # flarq has a different version number and must be updated manually
  app "flarq-4.3.9.app"
  app "fldigi-#{version}.app"

  zap trash: "~/.fldigi"
end
