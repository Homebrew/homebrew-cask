cask 'biscuit' do
  version '1.2.7'
  sha256 'dfdec32b8532ba9bd654612ea6db5bc213f3d63635aa2c1c27db27aec1755dc1'

  # github.com/agata/dl.biscuit/ was verified as official when first introduced to the cask
  url "https://github.com/agata/dl.biscuit/releases/download/v#{version}/Biscuit-#{version}.dmg"
  appcast 'https://github.com/agata/dl.biscuit/releases.atom'
  name 'Biscuit'
  homepage 'https://eatbiscuit.com/'

  auto_updates true

  app 'Biscuit.app'

  zap trash: [
               '~/Library/Application Support/Biscuit',
               '~/Library/Preferences/com.eatbiscuit.biscuit.plist',
             ]
end
