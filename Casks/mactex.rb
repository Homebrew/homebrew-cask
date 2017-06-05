cask 'mactex' do
  version '20170524'
  sha256 '0caf76027c9e0534a0b636f2b880ace4a0463105a7ad5774ccacede761be8c2d'

  # mirror.ctan.org/systems/mac/mactex was verified as official when first introduced to the cask
  url "http://mirror.ctan.org/systems/mac/mactex/mactex-#{version}.pkg"
  appcast 'https://www.tug.org/mactex/downloading.html',
          checkpoint: 'dcfb71e2918169fbd0a270994e722db3447fe1727fdff10a016db92c4f9492c1'
  name 'MacTeX'
  homepage 'https://www.tug.org/mactex/'

  pkg "mactex-#{version}.pkg"

  uninstall pkgutil: [
                       'org.tug.mactex.ghostscript9.21',
                       'org.tug.mactex.gui2017',
                       'org.tug.mactex.texlive2017',
                     ],
            delete:  [
                       '/usr/local/texlive/2017',
                       '/Applications/TeX',
                       '/Library/PreferencePanes/TeXDistPrefPane.prefPane',
                       '/etc/paths.d/TeX',
                       '/etc/manpaths.d/TeX',
                     ]

  zap delete: [
                '/usr/local/texlive/texmf-local',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texshop.sfl',
                '~/Library/Application Support/BibDesk',
                '~/Library/Application Support/TeXShop',
                '~/Library/Application Support/TeX Live Utility',
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeXShop.help',
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/edu.ucsd.cs.mmccrack.bibdesk.help',
                '~/Library/Caches/edu.ucsd.cs.mmccrack.bibdesk',
                '~/Library/Caches/fr.chachatelier.pierre.LaTeXiT',
                '~/Library/Caches/TeXShop',
                '~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist',
                '~/Library/Preferences/Excalibur Preferences',
                '~/Library/Preferences/fr.chachatelier.pierre.LaTeXiT.plist',
                '~/Library/Preferences/TeXShop.plist',
                '~/Library/Saved Application State/edu.bucknell.Excalibur.savedState',
                '~/Library/texlive/2017',
                '~/Library/TeXShop',
              ],
      rmdir:  [
                '/usr/local/texlive',
                '~/Library/texlive',
              ]
end
