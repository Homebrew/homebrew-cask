cask "lightworks" do
  version "2026.1.2"
  sha256 "33b61e3b802351c52af5b83a151ac56feb0957b1f4ed031f7b84f31b5e5ae116"

  url "https://cdn.lwks.com/releases/#{version}/Lightworks-#{version}.dmg"
  name "Lightworks"
  desc "Complete video creation package"
  homepage "https://www.lwks.com/"

  livecheck do
    url "https://forum.lwks.com/forums/product-releases.19/index.rss"
    regex(/v?(\d+(?:[._-]\d+)+)[._-]now[._-]available/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match.first&.tr("-", ".") }
    end
  end

  depends_on macos: :monterey

  app "Lightworks.app"

  zap trash: [
    "~/Documents/.Lightworks.thereCanBeOnlyOne",
    "~/Library/Saved Application State/com.editshare.lightworks.savedState",
  ]
end
