cask 'geph' do
  version '3.2.5'
  sha256 '2e082b40b721649fb9c52bb51e3a2f9547333cf74c0e246cb6f6f2528f3ec865'

  url "https://dl.geph.io/desktop-builds/geph-macos-#{version}.dmg"
  appcast 'https://geph.io/'
  name 'Geph'
  homepage 'https://geph.io/'

  app 'Geph.app'
end
