cask 'svg-cleaner' do
  version '0.7.0'
  sha256 '702b4c5fa80b30aedb44f8e232a7cd06aa3f8d3d3ec57c931142c7fbdf687752'

  url "https://github.com/RazrFalcon/svgcleaner-gui/releases/download/v#{version}/svgcleaner_macos_#{version}.7z"
  appcast 'https://github.com/RazrFalcon/svgcleaner-gui/releases.atom',
          checkpoint: '57e1927fc72a17d28760328c3cffc6ee15fc56de1160334489aa72dc12304164'
  name 'SVGCleaner'
  homepage 'https://github.com/RazrFalcon/svgcleaner-gui/'

  depends_on formula: 'unar'

  app 'SVG Cleaner.app'

  zap delete: '~/Library/Saved Application State/com.yourcompany.SVGCleaner.savedState'
end
