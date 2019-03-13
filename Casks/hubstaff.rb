cask 'hubstaff' do
  version '1.4.4,556fe980'
  sha256 'b388bede05079f2e0bb9f8804846c010c70b47263c7cd23a893a2f62f135ee99'

  url "https://app.hubstaff.com/download/344-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
