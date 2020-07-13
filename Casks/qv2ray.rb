cask 'qv2ray' do
  version '2.6.1'
  sha256 'a1966e09d6cdf78d80aff10218cab7d4e226d69b4f114e1d7535b79dc62e4afa'

  # github.com/Qv2ray/Qv2ray/ was verified as official when first introduced to the cask
  url "https://github.com/Qv2ray/Qv2ray/releases/download/v#{version}/Qv2ray-v#{version}.macOS-x64.dmg"
  appcast 'https://github.com/Qv2ray/Qv2ray/releases.atom'
  name 'Qv2ray'
  homepage 'https://qv2ray.github.io/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'qv2ray.app'
end
