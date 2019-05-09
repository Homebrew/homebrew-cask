cask 'focuswriter' do
  version '1.7.2'
  sha256 '78ebc45618f5826cdc216752628fefe6163479803b394d200ef6c0d547e694eb'

  url "https://gottcode.org/focuswriter/FocusWriter_#{version}.dmg"
  name 'FocusWriter'
  homepage 'https://gottcode.org/focuswriter/'

  app 'FocusWriter.app'

  zap trash: '~/Library/Application Support/GottCode/FocusWriter',
      rmdir: '~/Library/Application Support/GottCode'
end
