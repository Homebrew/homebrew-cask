cask 'swiftpm-catalog' do
  version '1.0.3-14'
  sha256 '5cdb2639fa3ac906312b2b6004f4fab9acfcab9c62edb2a260565f7bde0cee21'

  url "https://zeezide.com/download/SwiftPM%20Catalog.app-#{version}.zip"
  appcast 'https://zeezide.com/en/products/swiftpmcatalog/'
  name 'SwiftPM Catalog'
  homepage 'https://zeezide.com/en/products/swiftpmcatalog/'

  depends_on macos: '>= :mojave'

  app 'SwiftPM Catalog.app'
end
