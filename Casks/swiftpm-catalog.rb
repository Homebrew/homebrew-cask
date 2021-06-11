cask "swiftpm-catalog" do
  version "1.1.6,26"
  sha256 "b2f9af6967aa9460ced11be7d70206e0c3459648cca98623bbc8620fd525c6eb"

  url "https://zeezide.com/en/products/swiftpmcatalog/archives/SwiftPM%20Catalog.app-#{version.before_comma}-v#{version.after_comma}.zip"
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
