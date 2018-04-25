cask 'swimat' do
  version '1.5.1'
  sha256 '775159b22d29a867545a8611199ee4665dd2957f3a6695c8dc77db5e8b3d283b'

  url "https://github.com/Jintin/Swimat/releases/download/v#{version}/Swimat.zip"
  appcast 'https://github.com/Jintin/Swimat/releases.atom',
          checkpoint: 'e84277f725f9ed150c436f5373ec5bdebf9ed9625d67e9dd943ef6a6bc5c3b20'
  name 'Swimat'
  homepage 'https://github.com/Jintin/Swimat'

  app 'Swimat.app'
end
