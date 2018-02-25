cask 'netron' do
  version '1.5.5'
  sha256 '4ca9e2ab4fe3474827d07fd57f02dbf3347cb96fbbf93f3ae9cb21e1b7b5b5b4'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: 'c0e91ceb2ddd816a28e8580e60ee36e64c720be06d2bbd6cc2fd14c8ab7bc368'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
