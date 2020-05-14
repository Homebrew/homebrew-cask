cask 'hubstaff' do
  version '1.5.11,2289'
  sha256 '59a4a44932fcbc1b9bbfc7f1dfdf60de6d7823f6b416ee0f3efc8b047d5bbf75'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
