cask 'macdive' do
  version '2.9.0'
  sha256 'cd8a3ef3d4a55cad9a978aa04a7c9a11960f50bc5559a046010a20dbd535b642'

  url "http://mac-dive.com/shimmer/?download&appName=MacDive&appVariant=&appVersion=#{version}"
  appcast 'https://mac-dive.com/shimmer/?appcast&appName=MacDive',
          checkpoint: 'b23bc6e877dd23de7e5f2510525948459b961da7c3917a0d6e34902fd731d156'
  name 'MacDive'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
