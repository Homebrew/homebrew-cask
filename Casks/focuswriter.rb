cask 'focuswriter' do
  version '1.7.4'
  sha256 'e2180c97f6d28d53c008ee24c22c7bf2386b6353e66d3fbc056fa384cb1e0a3c'

  url "https://gottcode.org/focuswriter/FocusWriter_#{version}.dmg"
  appcast 'https://gottcode.org/focuswriter/'
  name 'FocusWriter'
  homepage 'https://gottcode.org/focuswriter/'

  app 'FocusWriter.app'

  zap trash: '~/Library/Application Support/GottCode/FocusWriter',
      rmdir: '~/Library/Application Support/GottCode'
end
