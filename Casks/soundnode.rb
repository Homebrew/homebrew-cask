cask 'soundnode' do
  version :latest
  sha256 :no_check

  url 'http://www.soundnodeapp.com/downloads/mac/Soundnode.zip'
  name 'Soundnode'
  homepage 'http://www.soundnodeapp.com/'

  app 'Soundnode.app'

  zap trash: [
               '~/Library/Application Support/Soundnode',
               '~/Library/Preferences/com.nw-builder.soundnode.plist',
               '~/Library/Saved Application State/com.nw-builder.soundnode.savedState',
             ]
end
