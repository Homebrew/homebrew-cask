cask "fldigi" do
  version "4.2.09"
  sha256 "55d03018ad2868821e2c11efcaec964b1035b6a3904689c9ce6789e26211680a"

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
