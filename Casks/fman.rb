cask 'fman' do
  version '1.6.5'
  sha256 '09feb91e12f3fcac5dfaa123475dcc9cc7ad2a4fc596129ead08cfe88d2efb91'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
