cask 'basictex' do
  version '20161009'
  sha256 '17f27a9c05f108b889b39d8ea2ff6236c1265f244e8e0376e9d14af4acf680bd'

  # mirror.ctan.org/systems/mac/mactex was verified as official when first introduced to the cask
  url "http://mirror.ctan.org/systems/mac/mactex/mactex-basictex-#{version}.pkg"
  name 'BasicTeX'
  homepage 'https://www.tug.org/mactex/morepackages.html'

  pkg "mactex-basictex-#{version}.pkg"

  uninstall pkgutil: 'org.tug.mactex.basictex2016',
            delete:  [
                       '/usr/local/texlive/2016',
                       '/Library/PreferencePanes/TeXDistPrefPane.prefPane',
                       '/etc/paths.d/TeX',
                       '/etc/manpaths.d/TeX',
                     ]

  zap delete: [
                '/usr/local/texlive/texmf-local',
                '~/Library/texlive/2016',
              ],
      rmdir:  [
                '/usr/local/texlive',
                '~/Library/texlive',
              ]
end
