cask 'augur' do
  version '1.13.0'
  sha256 'ef83f8d362995139c74457c3f75d09daa14e0c7277c943289924672ed15da517'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
