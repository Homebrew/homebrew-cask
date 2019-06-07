cask 'augur' do
  version '1.14.2'
  sha256 '76dbd7bacfa4ca0c0301d11b2cecc02f85aa72e684e58c2eb86d518c6b3b3f17'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
