cask "algodoo" do
  version "2.2.2"
  sha256 "9b91b3356ccbc880ab9b3e8a838a82aec18ff513b2a8b313218b5d63c7817c94"

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

  app "Algodoo.app"

  zap trash: [
    "~/Library/Application Support/Algodoo",
    "~/Library/Preferences/se.algoryx.Algodoo.plist",
    "~/Library/Saved Application State/se.algoryx.algodoo-regular.savedState",
  ]
end
