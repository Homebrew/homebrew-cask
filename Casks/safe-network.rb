cask 'safe-network' do
  version 'v0.0.3'
  sha256 'be18701cf0670da843ea47f688b3a90167ad0733d1008992029b2fb54c5b95ec'

  url "https://github.com/maidsafe/safe-network-app/releases/download/#{version}/safe-network-app-#{version}-mac-x64.dmg"
  appcast 'https://github.com/maidsafe/safe-network-app/releases.atom'

  name 'SAFE Network App'
  homepage 'https://maidsafe.net/'

  app 'SAFE Network App.app'
end
