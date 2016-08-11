cask 'mactex' do
  version '20160603'
  sha256 '34e5c48846a674e0025e92bf1ab7bb43a1108f729b4c26c61edcda24fa5383e3'

  # mirror.ctan.org/systems/mac/mactex was verified as official when first introduced to the cask
  url "http://mirror.ctan.org/systems/mac/mactex/mactex-#{version}.pkg"
  appcast 'https://www.tug.org/mactex/downloading.html',
          checkpoint: '14b52a4b06fa7259d2665c2a26f41dde0ee15fb61cb9b69c707ad916e9dd8073'
  name 'MacTeX'
  homepage 'https://www.tug.org/mactex/'
  license :oss

  pkg "mactex-#{version}.pkg"

  uninstall pkgutil: [
                       'org.tug.mactex.ghostscript9.19',
                       'org.tug.mactex.gui2016',
                       'org.tug.mactex.texlive2016',
                     ],
            delete:  [
                       '/usr/local/texlive/2016',
                       '/Applications/TeX',
                       '/Library/PreferencePanes/TeXDistPrefPane.prefPane',
                       '/etc/paths.d/TeX',
                       '/etc/manpaths.d/TeX',
                     ]

  zap delete: [
                '/usr/local/texlive/texmf-local',
                '~/Library/texlive/2016',
                '~/Library/Application Support/TeXShop',
                '~/Library/Application Support/TeX Live Utility',
                '~/Library/TeXShop',
              ],
      rmdir:  [
                '/usr/local/texlive',
                '~/Library/texlive',
              ]
end
