cask 'edrawmax' do
  version :latest
  sha256 :no_check

  language 'CN' do
    url 'http://www.edrawsoft.cn/2download/edrawmax-cn.dmg'
    homepage 'http://www.edrawsoft.cn/'
  end

  language 'en', default: true do
    url 'https://www.edrawsoft.com/archives/edrawmax.dmg'
    homepage 'https://www.edrawsoft.com/'
  end

  name 'EdrawMax'

  app 'EdrawMax.app'

  zap trash: [
               '~/Library/Edraw',
               '~/Library/Preferences/com.edrawsoft.edrawmax.plist',
               '~/Library/Saved Application State/com.edrawsoft.edrawmax.savedState',
             ]
end
