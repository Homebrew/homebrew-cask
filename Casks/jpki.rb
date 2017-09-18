cask 'jpki' do
  version '03-00'
  sha256 '41a04566520b3a63b95b39fcce4faee212d84b1509178feda39578e753a17179'

  url "https://www.jpki.go.jp/client/download/101/JPKI#{version}.dmg"
  name 'JPKI'
  homepage 'https://www.jpki.go.jp/'

  depends_on macos: '>= :yosemite'

  pkg 'JPKIInstall.pkg'

  uninstall pkgutil: 'jp.go.jpki',
            script:  {
                       executable: 'JPKIUninstall.command',
                       input:      ['Y'],
                       sudo:       true,
                     }

  caveats do
    depends_on_java('8+')
  end
end
