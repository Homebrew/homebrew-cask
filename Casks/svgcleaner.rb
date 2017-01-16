cask 'svgcleaner' do
  version '0.8.0'
  sha256 '544e75bd51b042e26183814720e656b787a6dd525c694314cf09ce0e6783f976'

  url "https://github.com/RazrFalcon/svgcleaner-gui/releases/download/v#{version}/svgcleaner_macos_#{version}.zip"
  appcast 'https://github.com/RazrFalcon/svgcleaner-gui/releases.atom',
          checkpoint: 'b96f2dc4b73e545ef13efdaec64e238ca5b5edb5d58dcc53ea1218e94ebe5c8a'
  name 'SVG Cleaner'
  homepage 'https://github.com/RazrFalcon/svgcleaner-gui/'

  app 'SVGCleaner.app'

  zap delete: [
                '~/Library/Preferences/com.svgcleaner.svgcleaner.plist',
                '~/Library/Saved Application State/com.yourcompany.SVGCleaner.savedState',
              ]
end
