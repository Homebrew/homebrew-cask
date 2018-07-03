cask 'aircall' do
  version '1.5.0'
  sha256 '489f759f59d535fee8640ef5ce3edc6c4d012a1d85608af6db8c2b63387fd47e'

  url "https://electron.aircall.io/download/version/#{version}/osx_64?filetype=dmg&channel=stable"
  appcast 'https://electron.aircall.io/update/osx/1.1.0'
  name 'Aircall'
  homepage 'https://aircall.io/'

  auto_updates true

  app 'Aircall.app'
end
