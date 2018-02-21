cask 'focuswriter' do
  version '1.6.10'
  sha256 '9a4a5c51edabeee4c54e866e1dfe16a4f2dd577ecba174d54dffed5747a58f4b'

  url "https://gottcode.org/focuswriter/FocusWriter_#{version}.dmg"
  name 'FocusWriter'
  homepage 'https://gottcode.org/focuswriter/'

  app 'FocusWriter.app'

  zap trash: '~/Library/Application Support/GottCode/FocusWriter',
      rmdir: '~/Library/Application Support/GottCode'
end
