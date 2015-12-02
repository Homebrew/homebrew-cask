cask :v1 => 'mactex' do
  version :latest
  sha256 :no_check

  url 'http://tug.org/cgi-bin/mactex-download/MacTeX.pkg'
  name 'MacTeX'
  homepage 'https://www.tug.org/mactex/'
  license :oss

  pkg 'MacTeX.pkg'

  uninstall :pkgutil => [
                         'org.tug.mactex.ghostscript9.16',
                         'org.tug.mactex.gui2015',
                         'org.tug.mactex.texlive2015'
                        ],
            :delete  => [
                         '/Applications/TeX',
                         '/Library/PreferencePanes/TeXDistPrefPane.prefPane',
                         '/etc/paths.d/TeX',
                         '/etc/manpaths.d/TeX'
                        ]
end
