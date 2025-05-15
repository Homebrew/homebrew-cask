cask "lightworks" do
  version "2025.1,151317"
  sha256 "a30d7124e9885d8ab23c809abad3485eb0de6e99a8b26778beb0b2dafaa8e8f0"

  url "https://cdn.lwks.com/releases/#{version.csv.first}/lightworks_#{version.csv.first.major_minor}_r#{version.csv.second}.dmg"
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

  depends_on macos: ">= :big_sur"

  app "Lightworks.app"

  zap trash: "~/Library/Saved Application State/com.editshare.lightworks.savedState"

  caveats do
    requires_rosetta
  end
end
