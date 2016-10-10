cask 'smartsynchronize' do
  version '3.4.7'
  sha256 'c1ef9876e480c3e9943b0993e46d211deb485e01f9b564dc54395d3783e841c4'

  url "https://www.syntevo.com/downloads/smartsynchronize/smartsynchronize-macosx-#{version.dots_to_underscores}.dmg"
  name 'SmartSynchronize'
  homepage 'https://www.syntevo.com/smartsynchronize/'

  depends_on macos: '>= :lion'

  app 'SmartSynchronize.app'
  binary "#{appdir}/SmartSynchronize.app/Contents/MacOS/SmartSynchronize"

  caveats do
    files_in_usr_local
  end
end
