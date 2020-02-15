cask 'hubstaff' do
  version '1.5.8,1992'
  sha256 '99a65518c72c66c36983b38e7e17d0a4c920fa9914dd2ed4f0cd33d0f5a21d10'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
