cask 'i4tools' do
  version '20190614,1.03.028'
  sha256 '9992b748f6bcd6a6bc24772c45f6879f5e8e4a84752633948749f892519675be'

  url "http://d.updater.i4.cn/i4mac/#{version.before_comma}/1/i4Tools_v#{version.after_comma}.dmg"
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://url.i4.cn/fqIBBbaa'
  name 'i4Tools'
  name '爱思助手'
  homepage 'https://i4.cn/'

  depends_on macos: '>= :el_capitan'

  app 'i4Tools.app'

  uninstall quit: 'cn.i4Tools'

  zap trash: '~/Library/Application Support/i4Tools'
end
