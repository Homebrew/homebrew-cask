cask 'focuswriter' do
  version '1.6.11'
  sha256 'b0b2da1f5e849b228f0c3b8acb66d5c869c7eb6755dd8e5003123f0b0612ff5b'

  url "https://gottcode.org/focuswriter/FocusWriter_#{version}.dmg"
  name 'FocusWriter'
  homepage 'https://gottcode.org/focuswriter/'

  app 'FocusWriter.app'

  zap trash: '~/Library/Application Support/GottCode/FocusWriter',
      rmdir: '~/Library/Application Support/GottCode'
end
