cask "pages-data-merge" do
  version "1.7"
  sha256 "034c1214a8732ec464dd020c102933ece0809a6ff4ce44b1a22fa0d3ad5d811f"

  url "https://iworkautomation.com/pages/data-merge-#{version.dots_to_hyphens}.zip",
      user_agent: :fake
  name "Pages Data Merge"
  desc "Mail merge for Pages"
  homepage "https://iworkautomation.com/pages/script-tags-data-merge.html"

  livecheck do
    url :homepage
    regex(/href=.*?data[._-]merge[._-]v?(\d+(?:[.-]\d+)+)\.zip/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match&.first&.tr("-", ".") }
    end
  end

  depends_on macos: ">= :high_sierra"
  container nested: "data-merge-#{version.dots_to_hyphens}/Pages-Data-Merge-#{version.dots_to_hyphens}.zip"

  app "Pages Data Merge.app"

  caveats do
    requires_rosetta
  end
end
