cask "fldigi" do
  version "4.2.11"
  sha256 "e25d7156969e97abdc1996264444194401530aba9582afc7b9eccbb48242986f"

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}.dmg",
      verified: "sourceforge.net/fldigi/"
  name "fldigi"
  desc "Ham radio digital modem application"
  homepage "https://www.w1hkj.org/"

  livecheck do
    url "https://sourceforge.net/projects/fldigi/rss?path=/fldigi"
    regex(%r{url=.*?/fldigi[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg}i)
  end

  depends_on macos: ">= :big_sur"

  app "fldigi-#{version}.app"

  zap trash: "~/.fldigi"
end
