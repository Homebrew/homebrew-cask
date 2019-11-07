cask 'hubstaff' do
  version '1.5.1,1598'
  sha256 '585e8c1d4c36c3e66c41816f500a8a5079fcc4a635a37d611b779779df355ce0'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
