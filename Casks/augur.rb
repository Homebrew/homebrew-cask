cask 'augur' do
  version '1.10.2'
  sha256 'e8ecb965e351d79dce6fd4d715b84fd8e48221277bbd39d58b6310017aa85102'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
