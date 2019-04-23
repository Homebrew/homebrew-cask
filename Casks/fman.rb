cask 'fman' do
  version '1.5.8'
  sha256 '27d38fbf1002b93730d10a3ba15a2c14773d40627b573da91c0b1ac1f6f44744'

  url "https://fman.io/updates/mac/#{version}.zip"
  appcast 'https://fman.io/updates/Appcast.xml'
  name 'fman'
  homepage 'https://fman.io/'

  app 'fman.app'
end
