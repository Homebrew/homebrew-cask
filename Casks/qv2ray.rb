cask 'qv2ray' do
  version '2.5.0'
  sha256 '8c2f7604ac28396420ff042e69ebe2b2f13c6a670df09a4955ece7a855a243e3'

  # github.com/Qv2ray/Qv2ray/ was verified as official when first introduced to the cask
  url "https://github.com/Qv2ray/Qv2ray/releases/download/v#{version}/Qv2ray-v#{version}.macOS-x64.dmg"
  appcast 'https://github.com/Qv2ray/Qv2ray/releases.atom'
  name 'Qv2ray'
  homepage 'https://qv2ray.github.io/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'qv2ray.app'
end
