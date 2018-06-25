cask 'kapow' do
  version '1.5.7'
  sha256 '282c9c42a0852e159d8e83ca1cefff1d12c807afbe2eb40b6041d6f780465ec4'

  url "https://gottcode.org/kapow/Kapow_#{version}.dmg"
  name 'Kapow'
  homepage 'https://gottcode.org/kapow'

  app 'Kapow.app'

  zap trash: '~/Library/Application Support/GottCode/Kapow',
      rmdir: '~/Library/Application Support/GottCode'
end
