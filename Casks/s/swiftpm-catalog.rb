cask "swiftpm-catalog" do
  version "1.2.2,1238"
  sha256 "f006f055b6eb620b0d9b5c882f9930450990fb43677f6915487818ec8bc6ee4f"

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

  depends_on macos: ">= :catalina"

  app "SwiftPM Catalog.app"

  zap trash: [
    "~/Library/Caches/SwiftPM Catalog",
    "~/Library/HTTPStorages/de.zeezide.swift.SwiftPMCatalog",
    "~/Library/org.swift.swiftpm",
    "~/Library/Preferences/de.zeezide.swift.SwiftPMCatalog.plist",
    "~/Library/Saved Application State/de.zeezide.swift.SwiftPMCatalog.savedState",
  ]
end
