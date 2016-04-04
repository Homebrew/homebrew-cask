cask 'araxis-merge' do
  version '2016.4750'

  name 'Araxis Merge'
  if MacOS.release <= :mavericks
    sha256 '9f3f4d3ba4931f69f75fd315e6823b19c5bb3938a5734b59b6aa92ec715ed00f'
    url "http://www.araxis.com/download/Merge#{version}-OSX10.9.dmg"
  elsif MacOS.release <= :yosemite
    sha256 '18208f885f645347ae5956a81aa1d1ef78fbc5dd5f5da0ed5a02efab004293cf'
    url "http://www.araxis.com/download/Merge#{version}-OSX10.10.dmg"
  else
    sha256 'efd2ec4fa98988022eaedda40c12fb7abd5d1720d8422f25ff279cd8daac8279'
    url "http://www.araxis.com/download/Merge#{version}-OSX10.11.dmg"
  end

  homepage 'http://www.araxis.com/merge'
  license :commercial

  depends_on macos: '>= :mavericks'

  app 'Araxis Merge.app'
  binary 'Utilities/araxisgitdiff'
  binary 'Utilities/araxisopendiff'
  binary 'Utilities/araxissvndiff'
  binary 'Utilities/compare'
  binary 'Utilities/araxisgitmerge'
  binary 'Utilities/araxisp4diff'
  binary 'Utilities/araxissvndiff3'
  binary 'Utilities/compare2'
  binary 'Utilities/araxishgmerge'
  binary 'Utilities/araxisp4winmrg'
  binary 'Utilities/araxissvnmerge'

  zap delete: [
                '~/Library/Preferences/com.araxis.merge.LSSharedFileList.plist',
                '~/Library/Preferences/com.araxis.merge.plist',
              ]

  caveats <<-EOS.undent
    For instructions to integrate Araxis Merge with Finder or other applications,
    see http://www.araxis.com/merge/documentation-os-x/installing.en
  EOS
end
