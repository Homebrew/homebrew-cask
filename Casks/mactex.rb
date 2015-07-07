cask :v1 => 'mactex' do
  version '20150613'
  sha256 'c5f5b0fd853a17dab6e844fb5e893804af78d938fa18ee94ec3b257611a95c12'

  # ctan.org is the official download host per the vendor homepage
  url "http://mirror.ctan.org/systems/mac/mactex/mactex-#{version}.pkg"
  name 'MacTeX'
  homepage 'https://www.tug.org/mactex/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "mactex-#{version}.pkg"

  uninstall :pkgutil => [
                         'org.tug.mactex.ghostscript9.16',
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
