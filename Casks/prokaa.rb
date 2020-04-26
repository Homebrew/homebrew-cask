cask 'prokaa' do
  version '0.2.3'
  sha256 '6c073e3c120e95e2cccc230f31738d089026dc4ca543feba6beca6d6db115ef3'

  url "https://github.com/jainkuniya/proKaa/releases/download/v#{version}/Prokaa-#{version}.dmg"
  appcast 'https://github.com/jainkuniya/proKaa/releases.atom'
  name 'Prokaa'
  homepage 'https://github.com/jainkuniya/proKaa/'

  auto_updates true

  app 'Prokaa.app'
end
