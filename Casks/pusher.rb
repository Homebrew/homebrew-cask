cask :v1 => 'pusher' do
  version '0.6.1'
  sha256 '772b36d99b254805764d33a0d2147a7cf5f7a3ccca87b1e363106a0b533a1ecc'

  url "https://github.com/noodlewerk/NWPusher/releases/download/#{version}/pusher.app.zip"
  name 'Pusher'
  name 'NWPusher'
  homepage 'https://github.com/noodlewerk/NWPusher'
  license :oss

  app 'Pusher.app'
end
