cask 'lunastudio' do
  version :latest
  sha256 :no_check

  url 'http://packages.luna-lang.org/darwin/lunaInstaller.zip'
  name 'Luna Studio'
  homepage 'http://www.luna-lang.org/'

  installer manual: 'lunaInstaller.app'

  uninstall delete: '/Applications/LunaStudio.app',
            trash:  '~/.luna/config/luna-studio'

  zap trash: '~/.luna'
end
