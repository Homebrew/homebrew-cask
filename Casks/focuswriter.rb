cask 'focuswriter' do
  version '1.6.9'
  sha256 '4f3249bbf1f5525935dfd3f636e7a563a671293bce83f739d81b9730c072a1a6'

  url "https://gottcode.org/focuswriter/FocusWriter_#{version}.dmg"
  name 'FocusWriter'
  homepage 'https://gottcode.org/focuswriter/'

  app 'FocusWriter.app'

  zap trash: '~/Library/Application Support/GottCode/FocusWriter',
      rmdir: '~/Library/Application Support/GottCode'
end
