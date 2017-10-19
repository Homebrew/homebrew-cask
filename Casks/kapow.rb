cask 'kapow' do
  version '1.5.3'
  sha256 '980ed8ec68045eb42c1d94a9fe809f50586a3b9a0248713aebf33ca62a37e625'

  url "https://gottcode.org/kapow/Kapow_#{version}.dmg"
  name 'Kapow'
  homepage 'https://gottcode.org/kapow'

  app 'Kapow.app'

  zap trash: '~/Library/Application Support/GottCode/Kapow',
      rmdir: '~/Library/Application Support/GottCode'
end
