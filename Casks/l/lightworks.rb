cask "lightworks" do
  version "2026.1.1"
  sha256 "8ba8171d9e0c58292a8f5cd374dcfc5e475864796db802bc9388ad191a7015d4"

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

  zap trash: "~/Library/Saved Application State/com.editshare.lightworks.savedState"
end
