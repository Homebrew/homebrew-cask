cask 'mactex-no-ghostscript' do
  version '20170524'
  sha256 '0caf76027c9e0534a0b636f2b880ace4a0463105a7ad5774ccacede761be8c2d'

  # mirror.ctan.org/systems/mac/mactex was verified as official when first introduced to the cask
  url "http://mirror.ctan.org/systems/mac/mactex/mactex-#{version}.pkg"
  appcast 'https://www.tug.org/mactex/downloading.html',
          checkpoint: '2dd3e7c71fe586512a5241f2b26c24f93af3510d2bda2f56da1a404098b894ee'
  name 'MacTeX'
  homepage 'https://www.tug.org/mactex/'

  conflicts_with cask: [
                         'mactex',
                         'basictex',
                       ]
  depends_on formula: 'ghostscript'

  pkg "mactex-#{version}.pkg",
      choices: [
                 {
                   # TeXLive
                   'choiceIdentifier' => 'choice1',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   # GUI-Applications
                   'choiceIdentifier' => 'choice2',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   # Ghostscript
                   'choiceIdentifier' => 'choice3',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
               ]

  uninstall pkgutil: [
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
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texshop.sfl',
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeXShop.help',
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/edu.ucsd.cs.mmccrack.bibdesk.help',
                '~/Library/Caches/edu.ucsd.cs.mmccrack.bibdesk',
                '~/Library/Caches/fr.chachatelier.pierre.LaTeXiT',
                '~/Library/Caches/TeXShop',
                '~/Library/Saved Application State/edu.bucknell.Excalibur.savedState',
                '~/Library/texlive/2017',
                '~/Library/TeXShop',
              ],
      trash:  [
                '/usr/local/texlive/texmf-local',
                '~/Library/Application Support/BibDesk',
                '~/Library/Application Support/TeXShop',
                '~/Library/Application Support/TeX Live Utility',
                '~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist',
                '~/Library/Preferences/Excalibur Preferences',
                '~/Library/Preferences/fr.chachatelier.pierre.LaTeXiT.plist',
                '~/Library/Preferences/TeXShop.plist',
              ],
      rmdir:  [
                '/usr/local/texlive',
                '~/Library/texlive',
              ]

  caveats <<~EOS
    This Cask installs ghostscript from Homebrew instead of the one packaged with MacTeX.
  EOS
end
