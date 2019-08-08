cask 'focuswriter' do
  version '1.7.3'
  sha256 '296fdcaaab2fed4fa8cfab474769dde87e2ab057fe8a468df75ef65963af82ed'

  url "https://gottcode.org/focuswriter/FocusWriter_#{version}.dmg"
  appcast 'https://gottcode.org/focuswriter/'
  name 'FocusWriter'
  homepage 'https://gottcode.org/focuswriter/'

  app 'FocusWriter.app'

  zap trash: '~/Library/Application Support/GottCode/FocusWriter',
      rmdir: '~/Library/Application Support/GottCode'
end
