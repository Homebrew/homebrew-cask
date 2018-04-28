cask 'mactex-no-gui' do
  version '2018.0417'
  sha256 'e6ee8f69ca6e5ca5d20a31afc3dff3b4e5aa7a0b1b89ace9864ac22b10c34b98'

  # mirror.ctan.org/systems/mac/mactex was verified as official when first introduced to the cask
  url "http://mirror.ctan.org/systems/mac/mactex/mactex-#{version.no_dots}.pkg"
  appcast 'https://www.tug.org/mactex/downloading.html',
          checkpoint: 'd39276f0d9d85bed9f501efb30c15d4e9ec18681aa00b98ba0ab649c3a1ff331'
  name 'MacTeX'
  homepage 'https://www.tug.org/mactex/'

  conflicts_with cask: [
                         'basictex',
                         'mactex',
                       ]
  depends_on formula: 'ghostscript'
  depends_on macos: '>= :yosemite'

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
                   'attributeSetting' => 0,
                 },
                 {
                   # Ghostscript
                   'choiceIdentifier' => 'choice3',
                   'choiceAttribute'  => 'selected',
                   'attributeSetting' => 0,
                 },
               ]

  uninstall pkgutil: "org.tug.mactex.texlive#{version.major}",
            delete:  [
                       "/usr/local/texlive/#{version.major}",
                       '/Library/PreferencePanes/TeXDistPrefPane.prefPane',
                       '/Library/TeX',
                       '/etc/paths.d/TeX',
                       '/etc/manpaths.d/TeX',
                     ]

  zap trash: [
               '/usr/local/texlive/texmf-local',
               "~/Library/texlive/#{version.major}",
             ],
      rmdir: [
               '/usr/local/texlive',
               '~/Library/texlive',
             ]
end
