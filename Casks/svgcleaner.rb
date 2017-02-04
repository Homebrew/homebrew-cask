cask 'svgcleaner' do
  version '0.8.1'
  sha256 '3ea96e1882b303cc554438867da7e85f69dde1ab1b8af70c8287c2abb6c54db4'

  url "https://github.com/RazrFalcon/svgcleaner-gui/releases/download/v#{version}/svgcleaner_macos_#{version}.zip"
  appcast 'https://github.com/RazrFalcon/svgcleaner-gui/releases.atom',
          checkpoint: '238f133ff682095cab4474b8871b538e5ade86912b1aa9d117073460cbb863a3'
  name 'SVG Cleaner'
  homepage 'https://github.com/RazrFalcon/svgcleaner-gui/'

  app 'SVGCleaner.app'
  binary "#{appdir}/SVGCleaner.app/Contents/MacOS/svgcleaner-cli", target: 'svgcleaner'

  zap delete: [
                '~/Library/Preferences/com.svgcleaner.svgcleaner.plist',
                '~/Library/Saved Application State/com.yourcompany.SVGCleaner.savedState',
              ]
end
