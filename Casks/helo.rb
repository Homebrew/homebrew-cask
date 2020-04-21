cask 'helo' do
  version '1.0.1'
  sha256 'db9e98a370686cd6fa928f5ec7bd4b974005c5700b42022fd79fa7c3edc27dd4'

  # helo.fra1.digitaloceanspaces.com was verified as official when first introduced to the cask
  url "https://helo.fra1.digitaloceanspaces.com/helo/HELO-#{version}.dmg"
  appcast 'https://helo.fra1.digitaloceanspaces.com/helo/latest-mac.yml'
  name 'HELO'
  homepage 'https://usehelo.com/'

  app 'HELO.app'

  zap trash: [
               '~/Library/Application Support/HELO',
               '~/Library/Logs/HELO',
               '~/Library/Preferences/de.beyondco.helo.plist',
               '~/Library/Saved Application State/de.beyondco.helo.savedState',
             ]
end
