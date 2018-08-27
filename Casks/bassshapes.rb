cask 'bassshapes' do
  version '01.2'
  sha256 '69077a7ec35e39e1257b6957436b383e2af4176f2f9158360244d65dada9bc06'

  url "http://yellquietly.com/downloads/BassShapes_v#{version}.zip"
  name 'Bass Shapes'
  homepage 'http://yellquietly.com/bass-shapes/'

  app 'BassShapes.app'

  zap trash: [
               '~/Library/Preferences/com.yellQuietly.BassShapes.plist',
               '~/Library/Saved Application State/com.yellQuietly.BassShapes.savedState',
             ]
end
