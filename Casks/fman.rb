cask 'fman' do
  version '1.4.4'
  sha256 'd0e5cb7da9d410c5b37e5425a33ed7380b3c48608f4404a9481fa2d0a8e60823'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
