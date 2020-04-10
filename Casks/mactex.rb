cask 'mactex' do
  version '2020.0407'
  sha256 'a33af89de36c7c84a76050c9704d50d23892e9c2070f04f6a53e1c6d5a332f67'

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
  depends_on macos: '>= :high_sierra'

  pkg "mactex-#{version.no_dots}.pkg",
      choices: [
                 {
                   # Ghostscript
                   'choiceIdentifier' => 'choice1',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   # Ghostscript Dynamic Library
                   'choiceIdentifier' => 'choice2',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
                 {
                   # GUI-Applications
                   'choiceIdentifier' => 'choice3',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
                 },
                 {
                   # TeXLive
                   'choiceIdentifier' => 'choice4',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 1,
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
