cask 'flirc' do
  version '3.22.3'
  sha256 '7229508680c0b7c7861baad15f5e7fa11ff43b2142a2ee9ec5b0c8fdb4cddec0'

  url 'https://flirc.tv/software/release/gui/mac/Flirc.dmg'
  appcast 'https://flirc.tv/software/release/gui/mac/appcast.xml'
  name 'Flirc'
  homepage 'https://flirc.tv/'

  app 'Flirc.app'
end
