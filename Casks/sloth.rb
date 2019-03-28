cask 'sloth' do
  version '2.8'
  sha256 'b260203343f955eaae3e3765b0b702713866b980321b6ebcbc7c04a33c5bc073'

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
