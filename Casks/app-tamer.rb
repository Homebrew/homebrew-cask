cask 'app-tamer' do
  version '2.3.1'
  sha256 '59113f020f7a14186bcaa6befb2619ccd5700dbb0c804acf20960871a84f52de'

  url "https://www.stclairsoft.com/download/AppTamer-#{version}.dmg"
  appcast 'https://www.stclairsoft.com/cgi-bin/sparkle.cgi?AT',
          checkpoint: 'fc8109f439396e848fff1d4ecbe39240f677d5d6870189aa1c816b8095c8f1f2'
  name 'AppTamer'
  homepage 'https://www.stclairsoft.com/AppTamer/'

  app 'App Tamer.app'
end
