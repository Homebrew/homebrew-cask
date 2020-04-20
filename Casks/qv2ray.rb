cask 'qv2ray' do
  version '2.4.1'
  sha256 '4e9cea18efada1eba9f47eb523b710f17ce5c0ab9faeef7437d8c8fc5e735967'

  # github.com/Qv2ray/Qv2ray/ was verified as official when first introduced to the cask
  url "https://github.com/Qv2ray/Qv2ray/releases/download/v#{version}/qv2ray-#{version}-Darwin.dmg"
  appcast 'https://github.com/Qv2ray/Qv2ray/releases.atom'
  name 'Qv2ray'
  homepage 'https://qv2ray.github.io/'

  auto_updates true
  depends_on macos: '>= :mojave'

  app 'qv2ray.app'
end
