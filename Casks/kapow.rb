cask 'kapow' do
  version '1.5.9'
  sha256 '17a7ea3d390f3a69e8e58800290fda27dc7e905aeac74b543f95bb0b244f7e73'

  url "https://gottcode.org/kapow/Kapow_#{version}.dmg"
  appcast 'https://gottcode.org/kapow/'
  name 'Kapow'
  homepage 'https://gottcode.org/kapow'

  app 'Kapow.app'

  zap trash: '~/Library/Application Support/GottCode/Kapow',
      rmdir: '~/Library/Application Support/GottCode'
end
