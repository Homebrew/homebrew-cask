cask "algodoo" do
  version "2.2.4"
  sha256 "02bb64abdff9cfd486bdc970fab692a8dd6312dbea78e3b6d31933b5c473916b"

  url "https://www.algodoo.com/download/Algodoo_#{version.dots_to_underscores}-macOS.dmg"
  name "Algodoo"
  desc "Draw and interact with physical systems"
  homepage "https://www.algodoo.com/"

  livecheck do
    url "https://www.algodoo.com/download/"
    regex(/href=.*?Algodoo[._-]v?(\d+(?:[._]\d+)+)[._-]macOS\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex)&.map { |match| match[0].tr("_", ".") }
    end
  end

  depends_on macos: ">= :mojave"

  app "Algodoo.app"

  zap trash: [
    "~/Library/Application Support/Algodoo",
    "~/Library/Preferences/se.algoryx.Algodoo.plist",
    "~/Library/Saved Application State/se.algoryx.algodoo-regular.savedState",
  ]
end
