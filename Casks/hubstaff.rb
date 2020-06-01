cask 'hubstaff' do
  version '1.5.12,2388'
  sha256 '6f486c41c06d26dd70ea6b6077d5d2a91b36efb1ab6b38c9fc18464af4c8a9b3'

  url "https://app.hubstaff.com/download/#{version.after_comma}-mac-os-x-#{version.before_comma.dots_to_hyphens}-release"
  appcast 'https://app.hubstaff.com/appcast.xml'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
