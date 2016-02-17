cask 'mactex' do
  version '20150613'
  sha256 'c5f5b0fd853a17dab6e844fb5e893804af78d938fa18ee94ec3b257611a95c12'

  url 'http://tug.org/cgi-bin/mactex-download/MacTeX.pkg'
  appcast 'http://www.tug.org/mactex/downloading.html#checksum',
          checkpoint: 'ef3bd331dbea7053d322e153a6a2c2db98ab93f70e0689e9eef5cf57220606ce'
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
