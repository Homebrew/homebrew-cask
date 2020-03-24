cask 'bdash' do
  version '1.7.2'
  sha256 'd5c719d80f162b700594df215909624fe967e3f187b3d9c72fcb94cdd76957c6'

  url "https://github.com/bdash-app/bdash/releases/download/v#{version}/Bdash-#{version}-mac.zip"
  appcast 'https://github.com/bdash-app/bdash/releases.atom'
  name 'Bdash'
  homepage 'https://github.com/bdash-app/bdash'

  app 'Bdash.app'
end
