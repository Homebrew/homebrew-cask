cask 'macdive' do
  version '2.8.2'
  sha256 '777a5531a2b1f6c63fb41faa41eb5c001c4ba275d97b1257e1623e2c4d3ca154'

  url "http://mac-dive.com/shimmer/?download&appName=MacDive&appVariant=&appVersion=#{version}"
  appcast 'https://mac-dive.com/shimmer/?appcast&appName=MacDive',
          checkpoint: 'bff5205ec140f3054efc5547272890dfd8ee098f19097e0ab448b9cfa0e8c409'
  name '715b20c9633a9459f1e7154e99094b0f306033c46468bc36cee65252628c9d17'
  homepage 'https://www.mac-dive.com/'

  app 'MacDive.app'
end
