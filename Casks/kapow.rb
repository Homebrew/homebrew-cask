cask 'kapow' do
  version '1.5.8'
  sha256 'd254ae782bee0d0e88d254d44e4dcec9bc471847645822647bb8fa85b258cee6'

  url "https://gottcode.org/kapow/Kapow_#{version}.dmg"
  name 'Kapow'
  homepage 'https://gottcode.org/kapow'

  app 'Kapow.app'

  zap trash: '~/Library/Application Support/GottCode/Kapow',
      rmdir: '~/Library/Application Support/GottCode'
end
