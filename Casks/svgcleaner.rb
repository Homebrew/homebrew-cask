cask 'svgcleaner' do
  version '0.9.5'
  sha256 'd1f3098ad5008a8f727d53e764239844db063a0a9cc2aa21ac0b0bdef6011335'

  url "https://github.com/RazrFalcon/svgcleaner-gui/releases/download/v#{version}/svgcleaner_macos_#{version}.zip"
  appcast 'https://github.com/RazrFalcon/svgcleaner-gui/releases.atom',
          checkpoint: 'b30297831a7cdfe089f62ed5af413da4ce093e982a7142eea4c5d24911aa91ea'
  name 'SVG Cleaner'
  homepage 'https://github.com/RazrFalcon/svgcleaner-gui/'

  app 'SVGCleaner.app'
  binary "#{appdir}/SVGCleaner.app/Contents/MacOS/svgcleaner-cli", target: 'svgcleaner'

  zap trash: [
               '~/Library/Preferences/com.svgcleaner.svgcleaner.plist',
               '~/Library/Saved Application State/com.yourcompany.SVGCleaner.savedState',
             ]
end
