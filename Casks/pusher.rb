cask 'pusher' do
  version '0.7.3'
  sha256 'c201d3f342f6cc54a40ca98aed4f7f2b7e99cc07c995352aab23fd44297217a8'

  url "https://github.com/noodlewerk/NWPusher/releases/download/#{version}/pusher.app.zip"
  appcast 'https://github.com/noodlewerk/NWPusher/releases.atom',
          checkpoint: 'f713f4ee615887d908c0334aaa31ae499f9fb98fbfc4b3ed976f787646709ac6'
  name 'NWPusher'
  homepage 'https://github.com/noodlewerk/NWPusher'
  license :bsd

  app 'Pusher.app'
end
