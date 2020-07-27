cask "swiftpm-catalog" do
  version "1.1.0-18"
  sha256 "2ec279fc05262ef6f9b5cc498cafc96942658e94ecc2ed4fa8827293629d8d89"

  url "https://zeezide.com/download/SwiftPM%20Catalog.app-#{version}.zip"
  appcast "https://zeezide.com/en/products/swiftpmcatalog/"
  name "SwiftPM Catalog"
  homepage "https://zeezide.com/en/products/swiftpmcatalog/"

  depends_on macos: ">= :mojave"

  app "SwiftPM Catalog.app"
end
