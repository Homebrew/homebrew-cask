cask 'biscuit' do
  version '1.2.0'
  sha256 '93b6c59ce972d8bb2ef2b23606171470013f1d01038963a026c4034820e19927'

  # github.com/agata/dl.biscuit was verified as official when first introduced to the cask
  url "https://github.com/agata/dl.biscuit/releases/download/v#{version}/Biscuit-#{version}.dmg"
  appcast 'https://github.com/agata/dl.biscuit/releases.atom'
  name 'biscuit'
  homepage 'https://eatbiscuit.com/'

  app 'Biscuit.app'

  zap trash: [
               '~/Library/Application Support/Biscuit',
               '~/Library/Preferences/com.eatbiscuit.biscuit.plist',
             ]
end
