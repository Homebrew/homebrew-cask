cask 'swimat' do
  version '1.5.1'
  sha256 '775159b22d29a867545a8611199ee4665dd2957f3a6695c8dc77db5e8b3d283b'

  url "https://github.com/Jintin/Swimat/releases/download/v#{version}/Swimat.zip"
  appcast 'https://github.com/Jintin/Swimat/releases.atom',
          checkpoint: '4fa6da2ce306563baa60761ae5b3273ca9ef941316b5d48d38f03f55ef402d38'
  name 'Swimat'
  homepage 'https://github.com/Jintin/Swimat'

  app 'Swimat.app'
end
