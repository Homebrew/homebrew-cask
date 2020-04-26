cask 'prokaa' do
  version '0.2.3'
  sha256 '9ae6d1e769d87477b3b893271bbfcf921e683e93'

  url "https://github.com/jainkuniya/proKaa/releases/download/v#{version}/Prokaa-#{version}.dmg"
  appcast 'https://github.com/jainkuniya/proKaa/releases.atom'
  name 'Prokaa'
  homepage 'https://github.com/jainkuniya/proKaa/'

  auto_updates true

  app 'Prokaa.app'
end
