cask 'bluesense' do
  version :latest
  sha256 :no_check

  url 'https://apps.inspira.io/updates/bluesense.zip'
  name 'BlueSense'
  homepage 'https://apps.inspira.io/bluesense/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'BlueSense.app'

  zap delete: [
                '~/Library/Preferences/com.inspira.bluesense.plist',
                '~/Library/Application Support/BlueSense',
                '~/Library/Caches/com.inspira.bluesense',
              ],
      rmdir:  '~/Library/Application Scripts/com.inspira.bluesense'
end
