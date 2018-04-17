cask 'svgcleaner' do
  version '0.9.4'
  sha256 'c5a2dec427d3be0b89544e0b74b487839c726546dab5c60ba4364208024186a6'

  url "https://github.com/RazrFalcon/svgcleaner-gui/releases/download/v#{version}/svgcleaner_macos_#{version}.zip"
  appcast 'https://github.com/RazrFalcon/svgcleaner-gui/releases.atom',
          checkpoint: '0b938f7384006d1dec053f23072cb481106d29b0afbf2ade1bbbbd9a8cbb1a00'
  name 'SVG Cleaner'
  homepage 'https://github.com/RazrFalcon/svgcleaner-gui/'

  app 'SVG Cleaner.app'
  binary "#{appdir}/SVG Cleaner.app/Contents/MacOS/svgcleaner-cli", target: 'svgcleaner'

  zap trash: [
               '~/Library/Preferences/com.svgcleaner.svgcleaner.plist',
               '~/Library/Saved Application State/com.yourcompany.SVGCleaner.savedState',
             ]
end
