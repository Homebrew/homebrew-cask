cask 'basictex' do
  version '2019.0410'
  sha256 '1472f6d03a239907c78a150c88909a16b1abf98ffec33f29c3bd1b3d3b394290'

  # mirror.ctan.org/systems/mac/mactex was verified as official when first introduced to the cask
  url "http://mirror.ctan.org/systems/mac/mactex/mactex-basictex-#{version.no_dots}.pkg"
  name 'BasicTeX'
  homepage 'https://www.tug.org/mactex/morepackages.html'

  conflicts_with cask: [
                         'mactex-no-gui',
                         'mactex',
                       ]
  depends_on macos: '>= :sierra'

  pkg "mactex-basictex-#{version.no_dots}.pkg"

  uninstall pkgutil: "org.tug.mactex.basictex#{version.major}",
            delete:  [
                       "/usr/local/texlive/#{version.major}basic",
                       '/etc/paths.d/TeX',
                       '/etc/manpaths.d/TeX',
                       '/Library/TeX',
                     ]

  zap trash: [
               '/usr/local/texlive/texmf-local',
               "~/Library/texlive/#{version.major}basic",
             ],
      rmdir: [
               '/usr/local/texlive',
               '~/Library/texlive',
             ]
end
