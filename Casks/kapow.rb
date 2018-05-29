cask 'kapow' do
  version '1.5.6'
  sha256 'e692a02233b3eee5b48637aca4f868f7943550a80b3682da9a243f273fd1b905'

  url "https://gottcode.org/kapow/Kapow_#{version}.dmg"
  name 'Kapow'
  homepage 'https://gottcode.org/kapow'

  app 'Kapow.app'

  zap trash: '~/Library/Application Support/GottCode/Kapow',
      rmdir: '~/Library/Application Support/GottCode'
end
