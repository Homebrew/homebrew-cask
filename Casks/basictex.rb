cask 'basictex' do
  version '20160523'
  sha256 '78de1bf80ab2c6ce839d0a44f10d761066f2597ff9ab4d52579aac26baf6e753'

  # mirror.ctan.org/systems/mac/mactex was verified as official when first introduced to the cask
  url "http://mirror.ctan.org/systems/mac/mactex/mactex-basictex-#{version}.pkg"
  name 'BasicTeX'
  homepage 'https://www.tug.org/mactex/morepackages.html'
  license :oss

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
