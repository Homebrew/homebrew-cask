cask "fldigi" do
  version "4.2.08"
  sha256 "4e706a641089d05e0b12f7c9897d45ce3983a4a24e07a463f62c7d4fa3c0208a"

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}.dmg",
      verified: "sourceforge.net/fldigi/"
  name "fldigi"
  desc "Ham radio digital modem application"
  homepage "https://www.w1hkj.org/"

  livecheck do
    url "https://sourceforge.net/projects/fldigi/rss?path=/fldigi"
    regex(%r{url=.*?/fldigi[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "fldigi-#{version}.app"

  zap trash: "~/.fldigi"
end
