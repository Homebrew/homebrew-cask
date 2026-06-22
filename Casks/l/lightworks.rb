cask "lightworks" do
  version "2025.2.56356"
  sha256 "8771f90dfc4a1872567e320679729df1a9a06b14ad47f69a4b1200528eef0ef1"

  url "https://cdn.lwks.com/releases/#{version.major_minor}/Lightworks-#{version.major_minor}-#{version.patch}.dmg"
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

  depends_on macos: :big_sur

  app "Lightworks.app"

  zap trash: "~/Library/Saved Application State/com.editshare.lightworks.savedState"

  caveats do
    requires_rosetta
  end
end
