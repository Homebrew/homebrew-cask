cask :v1 => 'mactex' do
  version :latest
  sha256 :no_check

  url 'http://tug.org/cgi-bin/mactex-download/MacTeX.pkg'
  name 'MacTeX'
  homepage 'https://www.tug.org/mactex/'
  license :oss

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
