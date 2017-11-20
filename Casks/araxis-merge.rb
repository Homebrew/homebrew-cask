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
    version '2017.4937'
    sha256 'a9a6ebfcf13a1fb30633dc5fe83633725052420fffb6743e85a8acea24909514'
    url "https://www.araxis.com/download/Merge#{version}-OSX10.11.dmg"
  elsif MacOS.version <= :sierra
    version '2017.4937'
    sha256 'e9e4cf7fed08a25327ca16ce18e799422b6c44cd5fc3a078844ca0ed6584e289'
    url "https://www.araxis.com/download/Merge#{version}-macOS10.12.dmg"
  else
    version '2017.4937'
    sha256 '5173d6e2bf1a0f289ddb6bb07f7f5aebbf455cbf10f1c25958a2fbc43f5b4304'
    url "https://www.araxis.com/download/Merge#{version}-macOS10.13.dmg"
  end

  appcast 'https://www.araxis.com/news-feed.atom',
          checkpoint: 'c298dbcf8d6c2de5c2331c7569a6ad25795a0bb3efc696d95d9d1bfa17bfaf64'
  name 'Araxis Merge'
  homepage 'https://www.araxis.com/merge/'

  depends_on macos: '>= :mountain_lion'

  app 'Araxis Merge.app'
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxisgitdiff"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxisopendiff"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxissvndiff"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/compare", target: 'araxiscompare'
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxisgitmerge"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxisp4diff"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxissvndiff3"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/compare2", target: 'araxiscompare2'
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxishgmerge"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxisp4winmrg"
  binary "#{appdir}/Araxis Merge.app/Contents/Utilities/araxissvnmerge"

  zap trash: [
               '~/Library/Preferences/com.araxis.merge.LSSharedFileList.plist',
               '~/Library/Preferences/com.araxis.merge.plist',
             ]

  caveats <<~EOS
    For instructions to integrate Araxis Merge with Finder or other applications,
    see https://www.araxis.com/merge/documentation-os-x/installing.en
  EOS
end
