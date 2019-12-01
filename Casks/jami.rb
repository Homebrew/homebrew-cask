cask 'jami' do
  version '20191128.2156'
  sha256 '1cf53ff37173f0bee8a9ccdb615bd01e1e0862c9dd6c26b2b739e147e43fa577'

  url "https://dl.ring.cx/mac_osx/jami-#{version.no_dots}.dmg"
  appcast 'https://dl.ring.cx/mac_osx/sparkle-ring.xml',
          configuration: version.no_dots
  name 'Jami'
  name 'Savoir-faire Linux Ring'
  homepage 'https://ring.cx/'

  auto_updates true

  app 'Jami.app'
end
