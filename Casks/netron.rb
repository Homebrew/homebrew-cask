cask 'netron' do
  version '1.3.3'
  sha256 '7240e30504b63622050028b90fc908a0ff694354397c72a1f7948b695636446e'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '72f0e985ed90edd5108ff4627df9c0aca31929320d3bc80077fcb9f0bfa2928e'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
