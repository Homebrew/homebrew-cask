cask 'audirvana-plus' do
  version '2.4'
  sha256 '1c88630b73394709bb567b7fcaa4c55dca46b1a15afbd1235676e712894a7a23'

  url "https://audirvana.com/delivery/AudirvanaPlus_#{version}.dmg"
  appcast 'https://audirvana.com/delivery/audirvanaplus2_appcast.xml',
          checkpoint: '2c7602f4e1a6219c538939be98e91238fa81041fd26cc0e5a50cc9032abd54ac'
  name 'Audirvana Plus 2'
  homepage 'https://audirvana.com/'
  license :commercial

  app 'Audirvana Plus.app'
end
