cask 'focuswriter' do
  version '1.7.1'
  sha256 '2f1763e2bc7ef3363c8006eb3081cb34358be98ae0567bbe007ea8e94579cd61'

  url "https://gottcode.org/focuswriter/FocusWriter_#{version}.dmg"
  name 'FocusWriter'
  homepage 'https://gottcode.org/focuswriter/'

  app 'FocusWriter.app'

  zap trash: '~/Library/Application Support/GottCode/FocusWriter',
      rmdir: '~/Library/Application Support/GottCode'
end
