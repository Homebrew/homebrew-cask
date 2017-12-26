cask 'netron' do
  version '1.1.9'
  sha256 'e377b7181d05c344b3c7a65690088f97376769d0ee77911bfd1b3191f7d24fe4'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom',
          checkpoint: '9ba3648d90cd1fff5b51b20acde9aa2f032893031d725abfb49d75f6a6916783'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
