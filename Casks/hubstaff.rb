cask 'hubstaff' do
  version '1.5.6,1860'
  sha256 '1dfd2b63189808a63da1333b5066fbcb6bb45950b6c29b1dede6ac94708a6e97'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
