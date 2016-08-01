cask 'svgcleaner' do
  version '0.6.2'
  sha256 '11a46910991b81aab8dc4f18859be9c518c62e1d03b2db2684f87f74de9edcf7'

  # sourceforge.net/svgcleaner was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/svgcleaner/SVGCleaner.app_#{version}.zip"
  appcast 'https://sourceforge.net/projects/svgcleaner/rss',
          checkpoint: 'ebd92be4f922b949564c492e25195ae6c30f58aea615e886e20586a67394aaf6'
  name 'SVGCleaner'
  homepage 'https://github.com/RazrFalcon/SVGCleaner/'
  license :gpl

  app 'SVGCleaner.app'

  zap delete: '~/Library/Saved Application State/com.yourcompany.SVGCleaner.savedState'
end
