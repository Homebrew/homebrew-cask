cask 'svgcleaner' do
  version '0.9.3'
  sha256 '7d5921b3532e93438bdc96953666e5be738c79f6e8689feda8bd92bc3995458d'

  url "https://github.com/RazrFalcon/svgcleaner-gui/releases/download/v#{version}/svgcleaner_macos_#{version}.zip"
  appcast 'https://github.com/RazrFalcon/svgcleaner-gui/releases.atom',
          checkpoint: 'd76d035ec8803c22162352e0ba218374597d7d815b8eeabce93b69e9b8e9dfbd'
  name 'SVG Cleaner'
  homepage 'https://github.com/RazrFalcon/svgcleaner-gui/'

  app 'SVG Cleaner.app'
  binary "#{appdir}/SVG Cleaner.app/Contents/MacOS/svgcleaner-cli", target: 'svgcleaner'

  zap trash: [
               '~/Library/Preferences/com.svgcleaner.svgcleaner.plist',
               '~/Library/Saved Application State/com.yourcompany.SVGCleaner.savedState',
             ]
end
