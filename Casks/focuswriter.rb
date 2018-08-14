cask 'focuswriter' do
  version '1.6.14'
  sha256 '6593d2b28ff6e221009f43026a7da208045d2bee1176369847f018e6755f4582'

  url "https://gottcode.org/focuswriter/FocusWriter_#{version}.dmg"
  name 'FocusWriter'
  homepage 'https://gottcode.org/focuswriter/'

  app 'FocusWriter.app'

  zap trash: '~/Library/Application Support/GottCode/FocusWriter',
      rmdir: '~/Library/Application Support/GottCode'
end
