cask 'hubstaff' do
  version '1.4.9,1136'
  sha256 '0d6b2a79f032f87068b6bd6b847242b0d7dd958ee33c34c767a022771b2872ae'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
