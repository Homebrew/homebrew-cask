cask :v1 => 'mactex' do
  version '20150609'
  sha256 'e5e3c3f0c753878dd7bd55660cef87a37816179c9b323b75f36daf11a6824b62'

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
