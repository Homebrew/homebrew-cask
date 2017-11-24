cask 'mactex' do
  version '20170524'
  sha256 '0caf76027c9e0534a0b636f2b880ace4a0463105a7ad5774ccacede761be8c2d'

  # mirror.ctan.org/systems/mac/mactex was verified as official when first introduced to the cask
  url "http://mirror.ctan.org/systems/mac/mactex/mactex-#{version}.pkg"
  appcast 'https://www.tug.org/mactex/downloading.html',
          checkpoint: '2dd3e7c71fe586512a5241f2b26c24f93af3510d2bda2f56da1a404098b894ee'
  name 'MacTeX'
  homepage 'https://www.tug.org/mactex/'

  conflicts_with cask: [
                         'mactex-no-ghostscript',
                         'basictex',
                       ]

  pkg "mactex-#{version}.pkg"

  uninstall pkgutil: [
                       'org.tug.mactex.ghostscript9.21',
                       'org.tug.mactex.gui2017',
                       'org.tug.mactex.texlive2017',
                     ],
            delete:  [
                       '/usr/local/texlive/2017',
                       '/usr/local/share/ghostscript/9.21',
                       '/Applications/TeX',
                       '/Library/PreferencePanes/TeXDistPrefPane.prefPane',
                       '/Library/TeX',
                       '/etc/paths.d/TeX',
                       '/etc/manpaths.d/TeX',
                     ]

  zap trash: [
               '/usr/local/texlive/texmf-local',
               '~/Library/texlive/2017',
               # TexShop:
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texshop.sfl*',
               '~/Library/Application Support/TeXShop',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeXShop Help*',
               '~/Library/Caches/TeXShop',
               '~/Library/Preferences/TeXShop.plist',
               '~/Library/TeXShop',
               # BibDesk:
               '~/Library/Application Support/BibDesk',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/edu.ucsd.cs.mmccrack.bibdesk.help*',
               '~/Library/Caches/edu.ucsd.cs.mmccrack.bibdesk',
               '~/Library/Cookies/edu.ucsd.cs.mmccrack.bibdesk.binarycookies',
               '~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist',
               # LaTeXiT:
               '~/Library/Caches/fr.chachatelier.pierre.LaTeXiT',
               '~/Library/Cookies/fr.chachatelier.pierre.LaTeXiT.binarycookies',
               '~/Library/Preferences/fr.chachatelier.pierre.LaTeXiT.plist',
               # TeX Live Utility:
               '~/Library/Application Support/TeX Live Utility',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeX Live Utility Help*',
               # Excalibur:
               '~/Library/Preferences/Excalibur Preferences',
               '~/Library/Saved Application State/edu.bucknell.Excalibur.savedState',
             ],
      rmdir: [
               '/usr/local/texlive',
               '/usr/local/share/ghostscript',
               '~/Library/texlive',
             ]
end
