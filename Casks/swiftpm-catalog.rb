cask "swiftpm-catalog" do
  version "1.1.8,28"
  sha256 "ed0a8e93c6d6cf1e0694c3bcf45fc2d7ab0920b57517ed9ea6f6816945360432"

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
