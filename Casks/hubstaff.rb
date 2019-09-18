cask 'hubstaff' do
  version '1.4.11,1268'
  sha256 '339096d23fe0a55efdf407eec717af8ecc583ef2f751b6761e682bcdbaf9c289'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff/Hubstaff.app'
end
