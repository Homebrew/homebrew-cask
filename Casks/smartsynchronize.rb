cask 'smartsynchronize' do
  version '3.4.10'
  sha256 '8526000d1d93f806e9306d3a50b707f00df3ede7c248925552607a397ad2d3cc'

  url "https://www.syntevo.com/static/smart/download/smartsynchronize/smartsynchronize-macosx-#{version.dots_to_underscores}.dmg"
  name 'SmartSynchronize'
  homepage 'https://www.syntevo.com/smartsynchronize/'

  depends_on macos: '>= :lion'

  app 'SmartSynchronize.app'
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"
end
