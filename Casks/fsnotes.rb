cask 'fsnotes' do
  version '4.0.24'
  sha256 '109eabc02bbc0cb4ea6bc4243230c8097285453de4d76992ac9cfac871b377b6'

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
