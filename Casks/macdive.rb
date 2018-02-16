cask 'macdive' do
  version '2.9.1'
  sha256 '9e4ce5eed7f3cb6257ce172864575b96d51e963395b34502fff5c3e28f30584d'

  url "http://mac-dive.com/shimmer/?download&appName=MacDive&appVariant=&appVersion=#{version}"
  appcast 'https://mac-dive.com/shimmer/?appcast&appName=MacDive',
          checkpoint: '8d33fd928204c0fdf7f6350befcbdf532e73ae676de3d90ddb8ec40ddb5dd1c6'
  name 'MacDive'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
