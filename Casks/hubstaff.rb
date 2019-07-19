cask 'hubstaff' do
  version '1.4.7,938'
  sha256 'd6116e698a2e6341150f077232cdb9bcc08f021cbd979d78acd81eb2e4e3d05b'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
