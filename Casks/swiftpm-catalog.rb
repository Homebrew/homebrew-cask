cask "swiftpm-catalog" do
  version "1.1.4-v22"
  sha256 "b1434d32eca36c664a5b75e5f8601f0a53e02d86eec9b25f25b475618aa5c9e9"

  url "https://zeezide.com/en/products/swiftpmcatalog/archives/SwiftPM%20Catalog.app-#{version}.zip"
  appcast "https://zeezide.com/en/products/swiftpmcatalog/"
  name "SwiftPM Catalog"
  homepage "https://zeezide.com/en/products/swiftpmcatalog/"

  depends_on macos: ">= :mojave"

  app "SwiftPM Catalog.app"
end
