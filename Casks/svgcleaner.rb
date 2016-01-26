cask 'svgcleaner' do
  version '0.6.2'
  sha256 '11a46910991b81aab8dc4f18859be9c518c62e1d03b2db2684f87f74de9edcf7'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/svgcleaner/SVGCleaner.app_#{version}.zip"
  name 'SVGCleaner'
  homepage 'https://github.com/RazrFalcon/SVGCleaner/'
  license :gpl

  app 'SVGCleaner.app'

  zap delete: '~/Library/Saved Application State/com.yourcompany.SVGCleaner.savedState'
end
