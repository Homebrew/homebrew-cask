cask 'augur' do
  version '1.1.1'
  sha256 '93ed6a353755789db45c34573d2688b101ca8f9caf02967eeb8b1a4c2f319048'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
