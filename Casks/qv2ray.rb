cask 'qv2ray' do
  version '2.6.2'
  sha256 '97f9722a8fd147bb6d7d2ddcc5b4079df246b7f5e6a5e95815f5aa07c932bac2'

  # github.com/Qv2ray/Qv2ray/ was verified as official when first introduced to the cask
  url "https://github.com/Qv2ray/Qv2ray/releases/download/v#{version}/Qv2ray-v#{version}.macOS-x64.dmg"
  appcast 'https://github.com/Qv2ray/Qv2ray/releases.atom'
  name 'Qv2ray'
  homepage 'https://qv2ray.github.io/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'qv2ray.app'
end
