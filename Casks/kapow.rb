cask 'kapow' do
  version '1.5.4'
  sha256 '98d7bf3820a5ce8cb2e9ea7bf6746f0dabd9b15fae509410e1259fdbe7a5b609'

  url "https://gottcode.org/kapow/Kapow_#{version}.dmg"
  name 'Kapow'
  homepage 'https://gottcode.org/kapow'

  app 'Kapow.app'

  zap trash: '~/Library/Application Support/GottCode/Kapow',
      rmdir: '~/Library/Application Support/GottCode'
end
