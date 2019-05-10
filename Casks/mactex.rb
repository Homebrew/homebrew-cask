cask 'mactex' do
  version '2019.0508'
  sha256 'ce6fa6d3ec5a4058d5889cfc36bf634fd8a5aefb6601d10c853e5f5d76455f4a'

  # mirror.ctan.org/systems/mac/mactex was verified as official when first introduced to the cask
  url "http://mirror.ctan.org/systems/mac/mactex/mactex-#{version.no_dots}.pkg"
  appcast 'https://www.tug.org/mactex/downloading.html'
  name 'MacTeX'
  homepage 'https://www.tug.org/mactex/'

  conflicts_with cask: [
                         'basictex',
                         'mactex-no-gui',
                       ]
  depends_on formula: 'ghostscript'
  depends_on macos: '>= :sierra'

  pkg "mactex-#{version.no_dots}.pkg",
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
                       "org.tug.mactex.gui#{version.major}",
                       "org.tug.mactex.texlive#{version.major}",
                     ],
            delete:  [
                       "/usr/local/texlive/#{version.major}",
                       '/Applications/TeX',
                       '/Library/TeX',
                       '/etc/paths.d/TeX',
                       '/etc/manpaths.d/TeX',
                     ]

  zap trash: [
               '/usr/local/texlive/texmf-local',
               "~/Library/texlive/#{version.major}",
               # TexShop:
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texshop.sfl*',
               '~/Library/Application Support/TeXShop',
               '~/Library/Caches/com.apple.helpd/Generated/TeXShop Help*',
               '~/Library/Caches/TeXShop',
               '~/Library/Preferences/TeXShop.plist',
               '~/Library/TeXShop',
               # BibDesk:
               '~/Library/Application Support/BibDesk',
               '~/Library/Caches/com.apple.helpd/Generated/edu.ucsd.cs.mmccrack.bibdesk.help*',
               '~/Library/Caches/edu.ucsd.cs.mmccrack.bibdesk',
               '~/Library/Cookies/edu.ucsd.cs.mmccrack.bibdesk.binarycookies',
               '~/Library/Preferences/edu.ucsd.cs.mmccrack.bibdesk.plist',
               # LaTeXiT:
               '~/Library/Caches/fr.chachatelier.pierre.LaTeXiT',
               '~/Library/Cookies/fr.chachatelier.pierre.LaTeXiT.binarycookies',
               '~/Library/Preferences/fr.chachatelier.pierre.LaTeXiT.plist',
               # TeX Live Utility:
               '~/Library/Application Support/TeX Live Utility',
               '~/Library/Caches/com.apple.helpd/Generated/TeX Live Utility Help*',
             ],
      rmdir: [
               '/usr/local/texlive',
               '~/Library/texlive',
             ]
end
