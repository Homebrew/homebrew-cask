cask 'mactex' do
  version '20160604'
  sha256 '2dde37de09e2ae33132044749204841127c1d7d2eb3b6da72c1e02673a1a5ec6'

  url 'http://tug.org/cgi-bin/mactex-download/MacTeX.pkg'
  appcast 'http://www.tug.org/mactex/downloading.html#checksum',
          checkpoint: '14b52a4b06fa7259d2665c2a26f41dde0ee15fb61cb9b69c707ad916e9dd8073'
  name 'MacTeX'
  homepage 'https://www.tug.org/mactex/'
  license :oss

  pkg 'MacTeX.pkg'

  uninstall pkgutil: [
                       'org.tug.mactex.ghostscript9.16',
                       'org.tug.mactex.gui2015',
                       'org.tug.mactex.texlive2015',
                     ],
            delete:  [
                       '/Applications/TeX',
                       '/Library/PreferencePanes/TeXDistPrefPane.prefPane',
                       '/etc/paths.d/TeX',
                       '/etc/manpaths.d/TeX',
                     ]
end
