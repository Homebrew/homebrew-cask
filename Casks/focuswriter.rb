cask 'focuswriter' do
  version '1.6.8'
  sha256 '0ccc581d6f895fc218f25abc5c91cc0de73af5e8cbac5bb8e2f0997e9a9d2c09'

  url "https://gottcode.org/focuswriter/FocusWriter_#{version}.dmg"
  name 'FocusWriter'
  homepage 'https://gottcode.org/focuswriter/'

  app 'FocusWriter.app'

  zap trash: '~/Library/Application Support/GottCode/FocusWriter',
      rmdir: '~/Library/Application Support/GottCode'
end
