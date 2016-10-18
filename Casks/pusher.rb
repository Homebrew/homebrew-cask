cask 'pusher' do
  version '0.7.3'
  sha256 '3f9d530ef00e58affac74238de1a4f8a1462f229e1f811a0dcdcbe6e8b6117be'

  url "https://github.com/noodlewerk/NWPusher/releases/download/#{version}/pusher.app.zip"
  appcast 'https://github.com/noodlewerk/NWPusher/releases.atom',
          checkpoint: 'f713f4ee615887d908c0334aaa31ae499f9fb98fbfc4b3ed976f787646709ac6'
  name 'NWPusher'
  homepage 'https://github.com/noodlewerk/NWPusher'

  app 'Pusher.app'
end
