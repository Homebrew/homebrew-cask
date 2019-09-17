cask 'hubstaff' do
  version '1.4.11,1300'
  sha256 '354f2fce95040c7397860d387e1ee244e51c246869bc83265992e63ab414394e'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff/Hubstaff.app'
end
