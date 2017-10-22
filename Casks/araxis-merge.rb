cask 'araxis-merge' do
  if MacOS.version <= :mountain_lion
    version '2014.4459'
    sha256 '7945e0fd583880bf4bbb65899c7184692d683f247764e73f435e0685954028f0'
    url "https://www.araxis.com/download/Merge#{version}-OSX10.8.dmg"
  elsif MacOS.version <= :mavericks
    version '2016.4774'
    sha256 '341b47242f30aca3ce3c0af9112c95f3bdac5f5ae262aa1894a9632b46fef6ab'
    url "https://www.araxis.com/download/Merge#{version}-OSX10.9.dmg"
  elsif MacOS.version <= :yosemite
    version '2017.4855'
    sha256 '7ba0fb79a0ef1a6e3c1f569e6b6c384d9d83d09a255faf4ed200252a8db85c8f'
    url "https://www.araxis.com/download/Merge#{version}-OSX10.10.dmg"
  elsif MacOS.version <= :el_capitan
    version '2017.4855'
    sha256 'feb0d1d33cb4911269dfa8a356cfcabb488c6db9963a7ede1ec3687959b123fb'
    url "https://www.araxis.com/download/Merge#{version}-OSX10.11.dmg"
  else
    version '2017.4884'
    sha256 'a92e38a640343e3d6c1069494fbd69234c5d8eb61cc813806bd66682485163d6'
    url "https://www.araxis.com/download/Merge#{version}-macOS10.12.dmg"
  end

  appcast 'https://www.araxis.com/news-feed.atom',
          checkpoint: '71c2e471ff2cdee1efce0cdea832e1404c8346c439f4cab14ac15c01e86eecbb'
  name 'Araxis Merge'
  homepage 'https://www.araxis.com/merge/'

  depends_on macos: '>= :mountain_lion'

  app 'Araxis Merge.app'
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxisgitdiff"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxisopendiff"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxissvndiff"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/compare"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxisgitmerge"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxisp4diff"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxissvndiff3"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/compare2"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxishgmerge"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxisp4winmrg"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxissvnmerge"

  zap delete: [
                '~/Library/Preferences/com.araxis.merge.LSSharedFileList.plist',
                '~/Library/Preferences/com.araxis.merge.plist',
              ]

  caveats <<~EOS
    For instructions to integrate Araxis Merge with Finder or other applications,
    see https://www.araxis.com/merge/documentation-os-x/installing.en
  EOS
end
