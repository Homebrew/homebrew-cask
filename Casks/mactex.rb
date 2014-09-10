class Mactex < Cask
  version '20140525'
  sha256 '4e7fc21dbddae436f604dbeb3db2dc13c44aa9e2dd827a669a170418e84fc7e6'

  url 'http://mirror.ctan.org/systems/mac/mactex/mactex-20140525.pkg'
  homepage 'http://www.tug.org/mactex/'

  pkg 'mactex-20140525.pkg'
  uninstall :pkgutil => [
                         'org.tug.mactex.ghostscript9.10',
                         'org.tug.mactex.gui2014',
                         'org.tug.mactex.texlive2014'
                        ],
            :files   => [
                         '/Applications/TeX',
                         '/etc/paths.d/TeX'
                        ]
  caveats do
    zsh_path_helper '/usr/texbin'
  end
end
