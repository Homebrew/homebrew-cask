cask 'hubstaff' do
  version '1.4.9,86828309'
  sha256 '53af33ebf4ac2b69d0b729c58088713f4071e15ef23b57d8646b74bba822706b'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
