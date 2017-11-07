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
end
