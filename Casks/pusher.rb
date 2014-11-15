cask :v1 => 'pusher' do
  version '0.5.3'
  sha256 'f2a2c6a39f105c10d5653fa1afe364aa8e930a9cb411c738197e5dc97f378edb'

  url "https://github.com/noodlewerk/NWPusher/releases/download/#{version}/pusher.app.zip"
  homepage 'https://github.com/noodlewerk/NWPusher'
  license :oss

  app 'Pusher.app'
end
