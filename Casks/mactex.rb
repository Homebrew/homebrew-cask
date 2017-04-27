cask 'mactex' do
  version '20161009'
  sha256 'b44873d445881900401d0e0eddccc78140b9ed51b538364889eb8529350d5bd7'

  # mirror.ctan.org/systems/mac/mactex was verified as official when first introduced to the cask
  url "http://mirror.ctan.org/systems/mac/mactex/mactex-#{version}.pkg"
  appcast 'https://www.tug.org/mactex/downloading.html',
          checkpoint: '822244b8386bf149f1ef93c2e5c1552c3024c8bb991dfbcfcfce9f624e97c2f2'
  name 'MacTeX'
  homepage 'https://www.tug.org/mactex/'

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
                '~/Library/texlive/2016',
                '~/Library/TeXShop',
              ],
      rmdir:  [
                '/usr/local/texlive',
                '~/Library/texlive',
              ]
end
