cask 'hubstaff' do
  version '1.5.2,1629'
  sha256 '99c35d5f28adebba9782a02ff4c10130be27785b5c6021f3a4ae7f4c4c163b77'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
