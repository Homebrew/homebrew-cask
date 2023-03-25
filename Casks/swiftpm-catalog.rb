cask "swiftpm-catalog" do
  version "1.1.12,32"
  sha256 "4672f3a3a4f0c1a18c4c8cd8b4e308a2862800287fc021341dafbd24cb834c25"

  url "https://zeezide.com/en/products/swiftpmcatalog/archives/SwiftPM%20Catalog.app-#{version.csv.first}-v#{version.csv.second}.zip"
  name "SwiftPM Catalog"
  desc "Browse and search for Swift Package Manager packages"
  homepage "https://zeezide.com/en/products/swiftpmcatalog/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      page.scan(%r{href=.*?/SwiftPM\s*Catalog\.app[._-](\d+(?:\.\d+)+)[_-]v?(\d+)\.zip}i).map do |match|
        "#{match[0]},#{match[1]}"
      end
    end
  end

  depends_on macos: ">= :mojave"

  app "SwiftPM Catalog.app"
end
