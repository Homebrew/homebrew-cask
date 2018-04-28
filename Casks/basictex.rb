cask 'basictex' do
  version '2018.0417'
  sha256 'f815d68391f74c5bc639ae421804bfb1342eb346e1eca23d11eb9ee3d4d9db46'

  # mirror.ctan.org/systems/mac/mactex was verified as official when first introduced to the cask
  url "http://mirror.ctan.org/systems/mac/mactex/mactex-basictex-#{version.no_dots}.pkg"
  name 'BasicTeX'
  homepage 'https://www.tug.org/mactex/morepackages.html'

  conflicts_with cask: [
                         'mactex-no-gui',
                         'mactex',
                       ]
  depends_on macos: '>= :yosemite'

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
