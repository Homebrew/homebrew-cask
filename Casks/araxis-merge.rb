cask 'araxis-merge' do
  name 'Araxis Merge'
  if MacOS.version <= :mountain_lion
    version '2014.4459'
    sha256 '7945e0fd583880bf4bbb65899c7184692d683f247764e73f435e0685954028f0'
    url "https://www.araxis.com/download/Merge#{version}-OSX10.8.dmg"
  elsif MacOS.version <= :mavericks
    version '2016.4774'
    sha256 '341b47242f30aca3ce3c0af9112c95f3bdac5f5ae262aa1894a9632b46fef6ab'
    url "https://www.araxis.com/download/Merge#{version}-OSX10.9.dmg"
  elsif MacOS.version <= :yosemite
    version '2016.4807'
    sha256 '248687ef599a2d53cd530bf64af3c613c612aca3a4153e168a47ca29edcff80e'
    url "https://www.araxis.com/download/Merge#{version}-OSX10.10.dmg"
  elsif MacOS.version <= :el_capitan
    version '2016.4807'
    sha256 '1af45479cfd648826446684a7f00d5bf7ff718e64f9647ad20d4e7433b2863bc'
    url "https://www.araxis.com/download/Merge#{version}-OSX10.11.dmg"
  else
    version '2016.4812'
    sha256 'e891327e9b15f7efa11eef6213d22fb5dad9d8d9c739a403ab98194a961467a2'
    url "https://www.araxis.com/download/Merge#{version}-macOS10.12.dmg"
  end

  homepage 'https://www.araxis.com/merge'

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

  caveats <<-EOS.undent
    For instructions to integrate Araxis Merge with Finder or other applications,
    see https://www.araxis.com/merge/documentation-os-x/installing.en
  EOS
end
