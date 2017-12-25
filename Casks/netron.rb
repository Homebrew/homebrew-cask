cask 'netron' do
  version '1.1.8'
  sha256 'b5bd99ea7605136b5d29a71e9e055e5dbbd433802ceb40a8b672e6e183930b2b'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '1fa4b92836d6ed9bd9ceaf4295ce86f8eb757d7a10103ce5c36933a9f900a95e'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
