cask 'mediathekview' do
  version '13.0.0'
  sha256 '96c8ba822f171dab19472ae4d8e2120014540c833ca28c767fc913b49a31144a'

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}.dmg"
  appcast 'https://mediathekview.de/changelog/index.xml',
          checkpoint: '1b1ad0bd0cbef19a4f59e8707e0c87f38a2d8bc88cd293c79a1a13ffef6e37d3'
  name 'MediathekView'
  homepage 'https://mediathekview.de'

  app 'MediathekView.app'
end
