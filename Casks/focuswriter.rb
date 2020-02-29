cask 'focuswriter' do
  version '1.7.5'
  sha256 '80b1892c72073a6ab225408fc0942b172a702212ab5bcd9ee87140857e389386'

  url "https://gottcode.org/focuswriter/FocusWriter_#{version}.dmg"
  appcast 'https://gottcode.org/focuswriter/'
  name 'FocusWriter'
  homepage 'https://gottcode.org/focuswriter/'

  app 'FocusWriter.app'

  zap trash: '~/Library/Application Support/GottCode/FocusWriter',
      rmdir: '~/Library/Application Support/GottCode'
end
