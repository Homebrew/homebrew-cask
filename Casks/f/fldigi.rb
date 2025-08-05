cask "fldigi" do
  version "4.2.07"
  sha256 "3141b1afcfba5da27f9e8d3e34253b0f90fc8c73cf8766d0189d59b2753c2844"

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
