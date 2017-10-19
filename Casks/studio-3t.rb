cask 'studio-3t' do
  version '5.5.1'
  sha256 '6304de674ff1af793028fd0b8c0aedd910bb3dfb9a4ded42dec6a545c650ad56'

  url "https://download.studio3t.com/studio-3t/mac/#{version}/Studio-3T.dmg"
  appcast 'http://files.studio3t.com/changelog/changelog.txt',
          checkpoint: '6d2829db05a17f0d61215d945003b7ad262b665101e2258bfa2e108b59ccea50'
  name 'Studio 3T'
  homepage 'https://studio3t.com/'

  app 'Studio 3T.app'
end
