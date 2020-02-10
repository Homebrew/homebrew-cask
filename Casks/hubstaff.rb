cask 'hubstaff' do
  version '1.5.7,1893'
  sha256 'ba062167e9657c0046f5265ffc52a32e998c425534b6b38aa062b0f070b9ba3d'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
