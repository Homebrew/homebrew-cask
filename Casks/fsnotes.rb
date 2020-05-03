cask 'fsnotes' do
  version '4.2.2'
  sha256 '816154d871ddb74f4fcf1786ea66d2dabce6796b2dd1883d884d59471169c88f'

  # github.com/glushchenko/fsnotes/ was verified as official when first introduced to the cask
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
