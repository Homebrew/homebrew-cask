cask "fldigi" do
  version "4.2.12"
  sha256 "4820d99af735f4d996d154b4606d8b791e89dc3ab176af54a99bd87414d01bd4"

  url "https://downloads.sourceforge.net/fldigi/fldigi/fldigi-#{version}.dmg",
      verified: "sourceforge.net/fldigi/"
  name "fldigi"
  desc "Ham radio digital modem application"
  homepage "https://www.w1hkj.org/"

  livecheck do
    url "https://sourceforge.net/projects/fldigi/rss?path=/fldigi"
    regex(%r{url=.*?/fldigi[._-]v?(\d+(?:\.\d+)+)[^"' >]*?\.dmg}i)
  end

  depends_on macos: :big_sur

  app "fldigi-#{version}.app"

  zap trash: "~/.fldigi"
end
