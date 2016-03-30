cask 'royal-tsx' do
  version '2.2.3.1000'
  sha256 '601ada5103428f2bca12941e68be90c5089c4c7b4e2f5a5eef62273f256df19a'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  appcast "https://royaltsx-v#{version.major}.royalapplications.com/updates_stable.php",
          checkpoint: '9c50ae75ff555c2f557ea16163da581d392c2c9d660edfcb7d9b52c7162c7b7c'
  name 'Royal TSX'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
