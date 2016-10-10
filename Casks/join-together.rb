cask 'join-together' do
  version '7.6.2'
  sha256 '81c94748d3cdb4fac88c82b8a4c1bcecda6bcb958e3bb3669f8861587d4e29fd'

  url "https://dougscripts.com/itunes/scrx/jointogether#{version.no_dots}.zip"
  appcast 'https://dougscripts.com/itunes/itinfo/jointogether_appcast.xml',
          checkpoint: 'd08e065f5b268046a65f3f46a0e5665312f340991da073c953d2962bf21794b9'
  name 'Join Together'
  homepage 'https://dougscripts.com/apps/jointogetherapp.php'

  app 'Join Together.app'
end
