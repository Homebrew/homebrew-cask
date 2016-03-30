cask 'araxis-merge' do
  version '2016.4702'

  name 'Araxis Merge'
  if MacOS.release <= :mavericks
    sha256 '2a6beea043ce59044afd46c89dc94303a38013144f2d85fff356215eb8c68884'
    url "http://www.araxis.com/download/Merge#{version}-OSX10.9.dmg"
  elsif MacOS.release <= :yosemite
    sha256 '074fa5bd4dc7f3bfb80b2c27d9125d5531cb750e41e0f23387ffaa274141debf'
    url "http://www.araxis.com/download/Merge#{version}-OSX10.10.dmg"
  else
    sha256 'e681fa9d0871467c9e5842c9cbbd650860dbc79bbebcb423c178d88815156477'
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
