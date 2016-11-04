cask 'svg-cleaner' do
  version '0.7.1'
  sha256 '3eae7e6a3738f291d93d6ab029db55ffacfc795ecca8d23e1fe66de00ba703d4'

  url "https://github.com/RazrFalcon/svgcleaner-gui/releases/download/v#{version}/svgcleaner_macos_#{version}.zip"
  appcast 'https://github.com/RazrFalcon/svgcleaner-gui/releases.atom',
          checkpoint: 'c6d3fc15b92224928961f3d87218a1306d2bb47c44b9c793ea1cff40c6251b41'
  name 'SVG Cleaner'
  homepage 'https://github.com/RazrFalcon/svgcleaner-gui/'

  app 'SVG Cleaner.app'

  zap delete: '~/Library/Saved Application State/com.yourcompany.SVGCleaner.savedState'
end
