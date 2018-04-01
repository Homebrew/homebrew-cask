cask 'kapow' do
  version '1.5.5'
  sha256 '5a2cf0db4123b77d172f1ac1d486adab98abb3ac982ed1d39c3b2fcbacd33e24'

  url "https://gottcode.org/kapow/Kapow_#{version}.dmg"
  name 'Kapow'
  homepage 'https://gottcode.org/kapow'

  app 'Kapow.app'

  zap trash: '~/Library/Application Support/GottCode/Kapow',
      rmdir: '~/Library/Application Support/GottCode'
end
