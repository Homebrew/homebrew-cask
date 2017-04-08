cask 'macdive' do
  version '2.8.1'
  sha256 '715b20c9633a9459f1e7154e99094b0f306033c46468bc36cee65252628c9d17'

  url "http://mac-dive.com/shimmer/?download&appName=MacDive&appVariant=&appVersion=#{version}"
  appcast 'https://mac-dive.com/shimmer/?appcast&appName=MacDive',
          checkpoint: 'bf903a088be06602ef57750dfc08a758e19d498255b2260483fbfc634901045a'
  name '715b20c9633a9459f1e7154e99094b0f306033c46468bc36cee65252628c9d17'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
