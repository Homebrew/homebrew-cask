cask 'magiccap' do
  version '2.0.2'
  sha256 '1c0f53f57fd1a950db284f639b407a9f479a1d44f90fe67e48360369f6c39d39'

  # github.com/magiccap/MagicCap was verified as official when first introduced to the cask
  url "https://github.com/magiccap/MagicCap/releases/download/v#{version}/magiccap-mac.dmg"
  appcast 'https://github.com/magiccap/MagicCap/releases.atom'
  name 'MagicCap'
  homepage 'https://magiccap.me/'

  app 'MagicCap.app'
end
