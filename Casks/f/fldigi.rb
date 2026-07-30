cask "fldigi" do
  version "4.2.13"
  sha256 "7d458a6eeb863047efc48f4a234197d16231fde4ed232ed1e1d67622b91467b6"

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
