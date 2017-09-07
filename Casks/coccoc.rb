cask 'coccoc' do
  version :latest
  sha256 :no_check

  url 'https://files.coccoc.com/browser/mac/coccoc.dmg'
  name 'Cốc Cốc'
  homepage 'http://coccoc.com/'

  auto_updates true

  app 'CocCoc.app'

  zap delete: [
                '~/Library/Application Support/Coccoc',
                '~/Library/Caches/Coccoc',
              ]
end
