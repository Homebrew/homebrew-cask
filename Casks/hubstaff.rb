cask 'hubstaff' do
  version '1.4.4,705'
  sha256 '70e030962fa1ac1b376b272e95bc140321198047db2abc24b7c66a3682b63f35'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
