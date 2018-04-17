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
    version '2017.4884'
    sha256 'abba11a92e1f50d913356d31123bed5bb08838ce39c4659206fd24c32432c4b3'
    url "https://www.araxis.com/download/Merge#{version}-OSX10.10.dmg"
  else
    version '2018.4971'
    sha256 'f16f7aa874dab7fa3f48e7284f9613e0c8c872034ffa4ddce20f37b38c8200f4'
    url "https://www.araxis.com/download/Merge#{version}-macOS.dmg"
  end

  appcast 'https://www.araxis.com/news-feed.atom',
          checkpoint: '7c405cb5dcce28e0ee8da41c76bb2cd4a908f77bb81896c58257e526909c5341'
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
