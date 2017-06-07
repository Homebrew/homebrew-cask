cask 'svgcleaner' do
  version '0.9.0'
  sha256 '444b4d1d79dbf202e4a90e347a653d6ef372396f6bf69d23350ef2cf5e13acb7'

  url "https://github.com/RazrFalcon/svgcleaner-gui/releases/download/v#{version}/svgcleaner_macos_#{version}.zip"
  appcast 'https://github.com/RazrFalcon/svgcleaner-gui/releases.atom',
          checkpoint: '0d021d66f13c9440b1c586c2bb2c8d69278d7c1afd50cb54082487cb8745aca9'
  name 'SVG Cleaner'
  homepage 'https://github.com/RazrFalcon/svgcleaner-gui/'

  app 'SVG Cleaner.app'
  binary "#{appdir}/SVG Cleaner.app/Contents/MacOS/svgcleaner-cli", target: 'svgcleaner'

  zap delete: [
                '~/Library/Preferences/com.svgcleaner.svgcleaner.plist',
                '~/Library/Saved Application State/com.yourcompany.SVGCleaner.savedState',
              ]
end
