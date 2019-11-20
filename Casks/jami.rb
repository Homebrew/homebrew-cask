cask 'jami' do
  version '20191119.1159'
  sha256 '2859cc37bef1f5698f9d2bce884e7ee0358ae67f6cffbcac79464a643ec9ff2b'

  url "https://dl.ring.cx/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
