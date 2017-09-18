cask 'jpki' do
  version '3.0'
  sha256 '41a04566520b3a63b95b39fcce4faee212d84b1509178feda39578e753a17179'

  url 'https://www.jpki.go.jp/client/download/101/JPKI03-00.dmg'
  name 'JPKI'
  homepage 'https://www.jpki.go.jp/'

  depends_on cask:  'java',
             macos: '>= 10.10'

  pkg 'JPKIInstall.pkg'

  uninstall pkgutil: [
                       'jp.go.jpki',
                     ]
end
