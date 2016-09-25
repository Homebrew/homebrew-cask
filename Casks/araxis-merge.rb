cask 'araxis-merge' do
  name 'Araxis Merge'
  if MacOS.version <= :mountain_lion
    version '2014.4459'
    sha256 '7945e0fd583880bf4bbb65899c7184692d683f247764e73f435e0685954028f0'
    url "https://www.araxis.com/download/Merge#{version}-OSX10.8.dmg"
  elsif MacOS.version <= :mavericks
    version '2016.4750'
    sha256 '9f3f4d3ba4931f69f75fd315e6823b19c5bb3938a5734b59b6aa92ec715ed00f'
    url "https://www.araxis.com/download/Merge#{version}-OSX10.9.dmg"
  elsif MacOS.version <= :yosemite
    version '2016.4807'
    sha256 '18208f885f645347ae5956a81aa1d1ef78fbc5dd5f5da0ed5a02efab004293cf'
    url "https://www.araxis.com/download/Merge#{version}-OSX10.10.dmg"
  elsif MacOS.version <= :el_capitan
    version '2016.4807'
    sha256 '18208f885f645347ae5956a81aa1d1ef78fbc5dd5f5da0ed5a02efab004293cf'
    url "https://www.araxis.com/download/Merge#{version}-OSX10.11.dmg"
  else
    version '2016.4807'
    sha256 '5bf21e354c067000d17c16988e75747c7ad27f50ea3ceae9f98029af3aa6c16c'
    url "https://www.araxis.com/download/Merge#{version}-macOS10.12.dmg"
  end

  homepage 'https://www.araxis.com/merge'
  license :commercial

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
