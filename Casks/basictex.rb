cask :v1 => 'basictex' do
  version :latest
  sha256 :no_check

  # ctan.org is the official download host per the vendor homepage
  url 'http://mirror.ctan.org/systems/mac/mactex/BasicTeX.pkg'
  name 'BasicTeX'
  homepage 'https://www.tug.org/mactex/morepackages.html'
  license :oss

  pkg 'BasicTeX.pkg'

  uninstall :pkgutil => 'org.tug.mactex.basictex2015',
            :delete  => [
                         '/Library/PreferencePanes/TeXDistPrefPane.prefPane',
                         '/etc/paths.d/TeX',
                         '/etc/manpaths.d/TeX'
                        ]
end
