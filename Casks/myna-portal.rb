cask 'myna-portal' do
  version '1.0.2'
  sha256 '07ca31d96628fb7bdae923aba205cc6d7197529d46f1265ff13a31483d609340'

  url 'https://img.myna.go.jp/tools/mac/MyNASetup.pkg'
  name 'MynaPortal'
  homepage 'https://myna.go.jp/'

  depends_on cask:  ['java', 'jpki'],
             macos: '>= 10.9'

  pkg 'MyNASetup.pkg'

  uninstall pkgutil: [
                       'jp.go.myna',
                     ],
            delete:  [
                       '/private/etc/MyNA',
                     ]
end
