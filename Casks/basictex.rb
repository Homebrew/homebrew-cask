cask 'basictex' do
  version :latest
  sha256 :no_check

  url 'http://tug.org/cgi-bin/mactex-download/BasicTeX.pkg'
  name 'BasicTeX'
  homepage 'https://www.tug.org/mactex/morepackages.html'
  license :oss

  pkg 'BasicTeX.pkg'

  uninstall pkgutil: 'org.tug.mactex.basictex2015',
            delete:  [
                       '/Library/PreferencePanes/TeXDistPrefPane.prefPane',
                       '/etc/paths.d/TeX',
                       '/etc/manpaths.d/TeX',
                     ]
end
