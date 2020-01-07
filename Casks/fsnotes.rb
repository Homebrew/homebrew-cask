cask 'fsnotes' do
  version '4.0.14'
  sha256 '922fd7c3d8a3c439cbe5174e31dbc9d5d9bf58f9ef3c4a728799244bda6f3504'

  # github.com/glushchenko/fsnotes was verified as official when first introduced to the cask
  url "https://github.com/glushchenko/fsnotes/releases/download/#{version}/FSNotes_#{version}.zip"
  appcast 'https://github.com/glushchenko/fsnotes/releases.atom'
  name 'FSNotes'
  homepage 'https://fsnot.es/'

  app 'FSNotes.app'

  zap trash: [
               '~/Library/Application Scripts/co.fluder.FSNotes',
               '~/Library/Containers/co.fluder.FSNotes',
             ]
end
