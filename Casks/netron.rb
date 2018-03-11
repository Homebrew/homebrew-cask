cask 'netron' do
  version '1.6.3'
  sha256 'b5f7ee5387fcbaaf9fc10f72e0ad9a6c0dde93f3f308452f7decb7a1008939a0'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '0c741c34d87fb816b63392e1e595aa05e43699e8674fb7ff3304b4b6c2f88a2b'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
