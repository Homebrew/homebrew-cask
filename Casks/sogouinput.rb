# encoding: UTF-8
class Sogouinput < Cask
    version '2.8.0'
  sha256 'bd42ec923c457e9186bc2ebddb1c27f1e62122e41515a77d8e701efaedf1a28e'

  url 'http://download.ime.sogou.com/1396610935/sogou_mac_28b.dmg?st=6rjQq1T-WtSrC98cZI0eVA&e=1401584081&fn=sogou_mac_28b.dmg'
  homepage 'http://pinyin.sogou.com/mac/'

    caskroom_only true
    caveats do
        manual_installer '安装搜狗输入法.app/Contents/SogouInstallerHelper'
    end
    uninstall :files => '/Library/Input Methods/SogouInput.app'
end
