cask "algodoo" do
  version "2.2.3"
  sha256 "96b37af5144aa50d1ea2e5e3b584e8cb43c8a6dcec887588a9a1d0ad4acc5b56"

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
