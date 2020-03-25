cask 'screen' do
  version '1.0.16'
  sha256 '9be3cb84f9e6dad6bb4a8b7a1afb2fac3723542fff4f659491a7cb33b58da759'

  url "https://download.screen.so/desktop-app/darwin/#{version}/Screen.dmg"
  name 'Screen'
  homepage 'https://screen.so/'

  app 'Screen.app'
end
