cask 'augur' do
  version '1.10.1'
  sha256 '3d19054f73ca9120fe6712b9a4b99a29cb932cdd7c24db669da9e4835f1f7311'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
