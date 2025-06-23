cask "lightworks" do
  version "2025.1,151752"
  sha256 "11a6438c86cb3df8f325c957a87ad5653806642bd8bf37feadf43c742e08580a"

  url "https://cdn.lwks.com/releases/#{version.csv.first}/Lightworks-#{version.csv.first.major_minor}-#{version.csv.second}.dmg"
  name "Lightworks"
  desc "Complete video creation package"
  homepage "https://www.lwks.com/"

  livecheck do
    url "https://forum.lwks.com/forums/product-releases.19/index.rss"
    regex(/v?(\d+(?:\.\d+)+).*?revision\s+(\d+)/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  no_autobump! because: :requires_manual_review

  depends_on macos: ">= :big_sur"

  app "Lightworks.app"

  zap trash: "~/Library/Saved Application State/com.editshare.lightworks.savedState"

  caveats do
    requires_rosetta
  end
end
