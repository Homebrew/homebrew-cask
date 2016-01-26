cask 'pusher' do
  version '0.7.0'
  sha256 'c1fd413680cdb97af5528c1e459f285fc88650ca967b605f455d5a01052f4d8d'

  url "https://github.com/noodlewerk/NWPusher/releases/download/#{version}/pusher.app.zip"
  appcast 'https://github.com/noodlewerk/NWPusher/releases.atom',
          checkpoint: '5a5c4793b2a280dcd123f861fc9d9677a1deeb557f88e549ced80e5ecca697df'
  name 'NWPusher'
  homepage 'https://github.com/noodlewerk/NWPusher'
  license :bsd

  app 'Pusher.app'
end
