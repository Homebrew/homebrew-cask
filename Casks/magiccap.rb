cask 'magiccap' do
  version '2.0.0'
  sha256 '8cebb0061062e03e54a71ff120a6c658a41bbf8952aadfd2945fd76808dc2cb6'

  # github.com/magiccap/MagicCap was verified as official when first introduced to the cask
  url "https://github.com/magiccap/MagicCap/releases/download/v#{version}/magiccap-mac.dmg"
  appcast 'https://github.com/magiccap/MagicCap/releases.atom'
  name 'MagicCap'
  homepage 'https://magiccap.me/'

  app 'MagicCap.app'
end
