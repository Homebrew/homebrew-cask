cask 'hubstaff' do
  version '1.4.9,86828309'
  sha256 '1649f5ad1c9bca8dd3eccbb1ca0aed517e48bad5608850eb35bf49c47b070e4d'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
