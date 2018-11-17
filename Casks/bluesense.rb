cask 'bluesense' do
  version '1.2'
  sha256 '248ea7eb6784c396231a27da34fbb02a4ab153e2f764388e6d640b8b9f097f51'

  url 'https://apps.inspira.io/updates/bluesense.zip'
  appcast 'https://apps.inspira.io/updates/bluesense-appcast.xml'
  name 'BlueSense'
  homepage 'https://apps.inspira.io/bluesense/'

  depends_on macos: '>= :yosemite'

  app 'BlueSense.app'

  zap trash: [
               '~/Library/Preferences/com.inspira.bluesense.plist',
               '~/Library/Application Support/BlueSense',
               '~/Library/Caches/com.inspira.bluesense',
             ],
      rmdir: '~/Library/Application Scripts/com.inspira.bluesense'
end
