cask 'hubstaff' do
  version '1.5.10,2223'
  sha256 '3c32fe638b6a9e6ac7c44dc7050993579a323cafe9be975ec94c6409a96807e3'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
