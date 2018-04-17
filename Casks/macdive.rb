cask 'macdive' do
  version '2.9.4'
  sha256 'b6735e8e7538ef50f4f68b78cb4f3626ceecc7bfbb2607f2e799f78f262fc395'

  url "http://mac-dive.com/shimmer/?download&appName=MacDive&appVariant=&appVersion=#{version}"
  appcast 'https://mac-dive.com/shimmer/?appcast&appName=MacDive',
          checkpoint: '4cd50289194b920bc451cf84c75f88a4d46371b42af600c39194c57e08e50eed'
  name 'MacDive'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
