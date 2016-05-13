cask 'bluesense' do
  version '1.1'
  sha256 'f74c90a7723fb752ddf7da4d1825176638f3c211239426f4cf09935c9a4171a3'

  url 'https://apps.inspira.io/updates/bluesense.zip'
  name 'BlueSense'
  homepage 'https://apps.inspira.io'
  license :commercial

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'BlueSense.app'

  zap delete: [
                '~/Library/Preferences/com.inspira.bluesense.plist',
              ]
end
