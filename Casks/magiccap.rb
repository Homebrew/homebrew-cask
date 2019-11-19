cask 'magiccap' do
  version '2.1.0'
  sha256 '8b4d81751515f458d2d2044da45bbc9858d09777e194ec76f5ea987f26cbc45b'

  # github.com/magiccap/MagicCap was verified as official when first introduced to the cask
  url "https://github.com/magiccap/MagicCap/releases/download/v#{version}/magiccap-mac.dmg"
  appcast 'https://github.com/magiccap/MagicCap/releases.atom'
  name 'MagicCap'
  homepage 'https://magiccap.me/'

  app 'MagicCap.app'
end
