cask 'magiccap' do
  version '2.1.1'
  sha256 'f5a1e6ae19fb676556e0ce9994ce4a6e41627f6c7c248b8f298144bf08c0a4dd'

  # github.com/magiccap/MagicCap was verified as official when first introduced to the cask
  url "https://github.com/magiccap/MagicCap/releases/download/v#{version}/magiccap-mac.dmg"
  appcast 'https://github.com/magiccap/MagicCap/releases.atom'
  name 'MagicCap'
  homepage 'https://magiccap.me/'

  app 'MagicCap.app'
end
