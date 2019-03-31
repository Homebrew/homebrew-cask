cask 'augur' do
  version '1.11.0'
  sha256 '6516ee33d8f3e3a65d7becb214b69cd1814f4337f44eab949d5c11daf23802ee'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
