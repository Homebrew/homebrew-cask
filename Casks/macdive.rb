cask 'macdive' do
  version '2.9.4'
  sha256 'b6735e8e7538ef50f4f68b78cb4f3626ceecc7bfbb2607f2e799f78f262fc395'

  url "http://mac-dive.com/shimmer/?download&appName=MacDive&appVariant=&appVersion=#{version}"
  appcast 'https://mac-dive.com/shimmer/?appcast&appName=MacDive'
  name 'MacDive'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
