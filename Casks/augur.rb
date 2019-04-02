cask 'augur' do
  version '1.11.1'
  sha256 '66e5cffb0c3cc4e460d2eb5d609d6a15d777faea55c709704d4b360821e66125'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
