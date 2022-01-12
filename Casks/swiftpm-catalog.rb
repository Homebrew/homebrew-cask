cask "swiftpm-catalog" do
  version "1.1.10,30"
  sha256 "584a4d4ad2b3d8945c527606dedd15376690975adb243b89fa3cc1bacfe81848"

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
