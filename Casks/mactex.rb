cask :v1 => 'mactex' do
  version '20150613'
  sha256 '42122a9fa665655369139a109af7a60bbcc26bc58889d2a8b96dd2d8d7aefd32'

  # ctan.org is the official download host per the vendor homepage
  url "http://mirror.ctan.org/systems/mac/mactex/mactex-#{version}.pkg"
  name 'MacTeX'
  homepage 'http://www.tug.org/mactex/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "mactex-#{version}.pkg"

  uninstall :pkgutil => [
                         'org.tug.mactex.ghostscript9.10',
                         'org.tug.mactex.gui2015',
                         'org.tug.mactex.texlive2015'
                        ],
            :delete  => [
                         '/Applications/TeX',
                         '/etc/paths.d/TeX',
                        ]
  caveats do
    zsh_path_helper '/usr/texbin'
  end
end
