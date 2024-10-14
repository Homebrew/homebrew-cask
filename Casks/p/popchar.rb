cask "popchar" do
  version "10.3"
  sha256 "e64e5ed610bbc66de068f1ff7597d0df4e4794ba97adf7ba8630fee7a4bef492"

  url "https://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg",
      user_agent: :fake
  name "PopChar X"
  desc "Utility to display all characters of a font"
  homepage "https://www.ergonis.com/products/popcharx/"

  livecheck do
    url "https://update.ergonis.com/vck/popcharx.xml"
    regex(/<Program_Version>(\d+(?:\.\d+)+)</i)
  end

  depends_on macos: ">= :high_sierra"

  app "PopChar.app"

  zap trash: [
    "~/Library/Application Support/PopChar",
    "~/Library/Caches/com.macility.popchar3",
    "~/Library/Preferences/com.macility.popchar3.plist",
  ]
end
