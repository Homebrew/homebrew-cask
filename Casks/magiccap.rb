cask 'magiccap' do
  version '2.0.0'
  sha256 :no_check

  # github.com/magiccap was verified as official when first introduced to the cask
  url "https://github.com/magiccap/MagicCap/releases/download/v#{version}/magiccap-mac.dmg"
  appcast 'https://github.com/magiccap/MagicCap/releases.atom'
  name 'MagicCap'
  homepage 'https://magiccap.me/'

  app 'MagicCap.app'
end
