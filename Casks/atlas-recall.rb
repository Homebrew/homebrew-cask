cask 'atlas-recall' do
  version :latest
  sha256 :no_check

  url 'https://download.atlas.co/release/latest/AtlasRecall.dmg'
  name 'Atlas Recall'
  homepage 'https://www.atlas.co/'

  app 'Atlas Recall.app'

  uninstall quit: 'co.atlasinformatics.Recall'

  zap delete: [
                '~/Library/Cookies/co.atlasinformatics.Recall.binarycookies',
                '~/Library/Logs/Atlas',
                '~/Library/Saved Application State/co.atlasinformatics.Recall.savedState',
                '~/Library/WebKit/co.atlasinformatics.Recall',
              ],
      trash:  '~/Library/Preferences/co.atlasinformatics.Recall.plist'
end
