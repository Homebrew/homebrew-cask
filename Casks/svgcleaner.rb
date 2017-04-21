cask 'svgcleaner' do
  version '0.8.1'
  sha256 '3ea96e1882b303cc554438867da7e85f69dde1ab1b8af70c8287c2abb6c54db4'

  url "https://github.com/RazrFalcon/svgcleaner-gui/releases/download/v#{version}/svgcleaner_macos_#{version}.zip"
  appcast 'https://github.com/RazrFalcon/svgcleaner-gui/releases.atom',
          checkpoint: '6a4f5f74f1be0b897a978106d02bf689471132140190ee5cc93e7469b299262a'
  name 'SVG Cleaner'
  homepage 'https://github.com/RazrFalcon/svgcleaner-gui/'

  app 'SVGCleaner.app'
  binary "#{appdir}/SVGCleaner.app/Contents/MacOS/svgcleaner-cli", target: 'svgcleaner'

  zap delete: [
                '~/Library/Preferences/com.svgcleaner.svgcleaner.plist',
                '~/Library/Saved Application State/com.yourcompany.SVGCleaner.savedState',
              ]
end
