cask "swiftpm-catalog" do
  version "1.1.14,34"
  sha256 "2b4d97d9a796c242c8cfd34d0790f40cd52989d875f78b739d486150d60b53cc"

  url "https://zeezide.com/en/products/swiftpmcatalog/archives/SwiftPM%20Catalog.app-#{version.csv.first}-v#{version.csv.second}.zip"
  name "SwiftPM Catalog"
  desc "Browse and search for Swift Package Manager packages"
  homepage "https://zeezide.com/en/products/swiftpmcatalog/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/SwiftPM\s*Catalog\.app[._-](\d+(?:\.\d+)+)[_-]v?(\d+)\.zip}i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  depends_on macos: ">= :mojave"

  app "SwiftPM Catalog.app"
end
