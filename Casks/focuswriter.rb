cask 'focuswriter' do
  version '1.6.12'
  sha256 'b7d920241a522d1781ee77c2560f71e70924d47a12c711a6342d6fd61d9a865f'

  url "https://gottcode.org/focuswriter/FocusWriter_#{version}.dmg"
  name 'FocusWriter'
  homepage 'https://gottcode.org/focuswriter/'

  app 'FocusWriter.app'

  zap trash: '~/Library/Application Support/GottCode/FocusWriter',
      rmdir: '~/Library/Application Support/GottCode'
end
