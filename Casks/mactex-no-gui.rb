cask 'mactex-no-gui' do
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
                         'mactex-no-ghostscript',
                         'basictex',
                       ]
  depends_on macos: '>= :yosemite'
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
                   'attributeSetting' => 0,
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
                       '/Library/TeX',
                       '/etc/paths.d/TeX',
                       '/etc/manpaths.d/TeX',
                     ]

  zap trash: [
               '/usr/local/texlive/texmf-local',
               '~/Library/texlive/2017',
             ],
      rmdir: [
               '/usr/local/texlive',
               '~/Library/texlive',
             ]

  caveats <<~EOS
    This Cask does not install any of the gui apps packaged with MacTeX.
  EOS
end
