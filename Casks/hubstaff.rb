cask 'hubstaff' do
  version '1.5.5,1761'
  sha256 '9fb6e2d9d7113320d813f3b4090c46c8707e64499fd94fd105127f72b27f1e89'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
