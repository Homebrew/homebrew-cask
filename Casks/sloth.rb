cask 'sloth' do
  version '2.6'
  sha256 '709eb4778bcde615f23e77d3914ced79670716619414dc768d10b15968a98acc'

  url "https://sveinbjorn.org/files/software/sloth/sloth-#{version}.zip"
  appcast 'https://sveinbjorn.org/files/appcasts/SlothAppcast.xml'
  name 'Sloth'
  homepage 'https://sveinbjorn.org/sloth'

  auto_updates true

  app 'Sloth.app'

  zap trash: [
               '~/Library/Preferences/org.sveinbjorn.Sloth.plist',
               '~/Library/Saved Application State/org.sveinbjorn.Sloth.savedState',
             ]
end
