cask 'hubstaff' do
  version '1.5.4,1728'
  sha256 '597a8fd886e1c1fbc0e4135f47e37f950daf9e804af48babd985688007ed6fd3'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
