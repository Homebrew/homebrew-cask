cask 'svgcleaner' do
  version '0.9.1'
  sha256 'f0bb62eba3f0eb68e7c71d913fb74d3438c40ad27186f3e9e945a2185634d3f0'

  url "https://github.com/RazrFalcon/svgcleaner-gui/releases/download/v#{version}/svgcleaner_macos_#{version}.zip"
  appcast 'https://github.com/RazrFalcon/svgcleaner-gui/releases.atom',
          checkpoint: '0766cb077502e5e486e67580c20afc5636faa96f1a9ce087fce3df03aeeaaea2'
  name 'SVG Cleaner'
  homepage 'https://github.com/RazrFalcon/svgcleaner-gui/'

  app 'SVG Cleaner.app'
  binary "#{appdir}/SVG Cleaner.app/Contents/MacOS/svgcleaner-cli", target: 'svgcleaner'

  zap trash: [
               '~/Library/Preferences/com.svgcleaner.svgcleaner.plist',
               '~/Library/Saved Application State/com.yourcompany.SVGCleaner.savedState',
             ]
end
