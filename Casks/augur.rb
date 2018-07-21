cask 'augur' do
  version '1.0.4'
  sha256 '1964e2b15b537c870012751182d1b212704f321491eefb00dcc973fe8a7575fc'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
