cask 'hubstaff' do
  version '1.4.5,839'
  sha256 '739748284062ca9b095eb2ce150834b99b477f726e5d3aa0a76e70b499bd1520'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
