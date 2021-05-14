cask "swiftpm-catalog" do
  version "1.1.4,22"
  sha256 "b1434d32eca36c664a5b75e5f8601f0a53e02d86eec9b25f25b475618aa5c9e9"

  url "https://zeezide.com/en/products/swiftpmcatalog/archives/SwiftPM%20Catalog.app-#{version.before_comma}-v#{version.after_comma}.zip"
  name "SwiftPM Catalog"
  homepage "https://zeezide.com/en/products/swiftpmcatalog/"

  livecheck do
    url "https://zeezide.com/en/products/swiftpmcatalog/"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/SwiftPM\s*Catalog\.app-(\d+(?:\.\d+)*)-v(\d+)\.zip}i)
      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :mojave"

  app "SwiftPM Catalog.app"
end
