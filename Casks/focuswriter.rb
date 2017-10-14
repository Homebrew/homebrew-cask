cask 'focuswriter' do
  version '1.6.7'
  sha256 'b41d6a8b0b2e679c2035839ceaa85bbe00d281361cc4190ff1d1db8a3cc658e0'

  url "https://gottcode.org/focuswriter/FocusWriter_#{version}.dmg"
  name 'FocusWriter'
  homepage 'https://gottcode.org/focuswriter/'

  app 'FocusWriter.app'

  zap trash: '~/Library/Application Support/GottCode/FocusWriter',
      rmdir: '~/Library/Application Support/GottCode'
end
