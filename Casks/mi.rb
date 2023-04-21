cask "mi" do
  version "3.7.5"
  sha256 "12085323b38e9facffad676a0080344831cee58f88c602468e5a15ea647ec54b"

  url "https://www.mimikaki.net/download/mi#{version}.dmg"
  name "mi"
  desc "Text editor"
  homepage "https://www.mimikaki.net/"

  livecheck do
    url "https://www.mimikaki.net/download/appcast.xml"
    strategy :sparkle
    regex(/(\d+(?:\.\d+)*)/i)
    strategy :sparkle do |item, regex|
      match = item.short_version.match(regex)
      next if match.blank?

      match.to_s
    end
  end

  conflicts_with cask: "homebrew/cask-versions/mi-beta"

  app "mi.app"

  zap trash: [
    "~/Library/Caches/net.mimikaki.mi",
    "~/Library/Preferences/net.mimikaki.mi.plist",
  ]
end
