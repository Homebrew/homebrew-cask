cask 'geph' do
  version '3.4.1'
  sha256 'fa7ecfa71bd0f1d1ee0a4a3affbe6e852b9f70b99dd224259a613d4848210f0d'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
