cask 'qv2ray' do
  version '2.6.1'
  sha256 'b64cdcd1b0440b9f6024a024ffe36acafdb331e5940db59e5751a5a6ce02f743'

  # github.com/Qv2ray/Qv2ray/ was verified as official when first introduced to the cask
  url "https://github.com/Qv2ray/Qv2ray/releases/download/v#{version}/Qv2ray-v#{version}.macOS-x64.dmg"
  appcast 'https://github.com/Qv2ray/Qv2ray/releases.atom'
  name 'Qv2ray'
  homepage 'https://qv2ray.github.io/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'qv2ray.app'
end
