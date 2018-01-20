cask 'svgcleaner' do
  version '0.9.2'
  sha256 'e0cca96e72c0765247cf5a2244b66e711b8a92008db96e5829db0d9def97bd0f'

  url "https://github.com/RazrFalcon/svgcleaner-gui/releases/download/v#{version}/svgcleaner_macos_#{version}.zip"
  appcast 'https://github.com/RazrFalcon/svgcleaner-gui/releases.atom',
          checkpoint: '0acd8aa8ba1a9e4352b845f9f93d518bce4180607641aadf8cf46a4bf83d0a14'
  name 'SVG Cleaner'
  homepage 'https://github.com/RazrFalcon/svgcleaner-gui/'

  app 'SVG Cleaner.app'
  binary "#{appdir}/SVG Cleaner.app/Contents/MacOS/svgcleaner-cli", target: 'svgcleaner'

  zap trash: [
               '~/Library/Preferences/com.svgcleaner.svgcleaner.plist',
               '~/Library/Saved Application State/com.yourcompany.SVGCleaner.savedState',
             ]
end
