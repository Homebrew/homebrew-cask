cask 'helo' do
  version '1.0.0'
  sha256 'c7f16d8aca24ab2bec831e5cd33bc9c6e00c48d07b5d225b0135871b84536d3c'

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
