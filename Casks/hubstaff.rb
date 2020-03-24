cask 'hubstaff' do
  version '1.5.9,2025'
  sha256 '51da121d85af776bca859e2b27ccba4a44675b0d7bd7acbe11febebbe89c5d5d'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
