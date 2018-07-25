cask 'augur' do
  version '1.0.6'
  sha256 '75c2d2b237559a489681be572ecf08a95b40f21536c429c059304238810880f4'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
