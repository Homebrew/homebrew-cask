cask "fldigi" do
  version "4.2.10"
  sha256 "d6b6ba31252bdb0ac41cb3c5b2dfb886370749e404e5d9476906c67b53a46fa2"

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}.dmg",
      verified: "sourceforge.net/fldigi/"
  name "fldigi"
  desc "Ham radio digital modem application"
  homepage "https://www.w1hkj.org/"

  livecheck do
    url "https://sourceforge.net/projects/fldigi/rss?path=/fldigi"
    regex(%r{url=.*?/fldigi[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg}i)
  end

  app "fldigi-#{version}.app"

  zap trash: "~/.fldigi"
end
