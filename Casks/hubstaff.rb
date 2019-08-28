cask 'hubstaff' do
  version '1.4.10,1235'
  sha256 'de6b22f850df6c8e306e78f12d289df6d0de5a1232a1d484f331e5290bd54b15'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
