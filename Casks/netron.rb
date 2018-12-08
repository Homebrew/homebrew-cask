cask 'netron' do
  version '2.7.1'
  sha256 '7aede7968d539d4f8b89add10506d4ec0ddfca142f895ee2376c5978d0f9eda4'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
