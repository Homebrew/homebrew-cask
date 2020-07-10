cask 'qv2ray' do
  version '2.6.0'
  sha256 '0f9536e87cee6b4451bb67be7023a7d1886420ab9ef5c219cf0fb752006a2eb2'

  # github.com/Qv2ray/Qv2ray/ was verified as official when first introduced to the cask
  url "https://github.com/Qv2ray/Qv2ray/releases/download/v#{version}/Qv2ray-v#{version}.macOS-x64.dmg"
  appcast 'https://github.com/Qv2ray/Qv2ray/releases.atom'
  name 'Qv2ray'
  homepage 'https://qv2ray.github.io/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'qv2ray.app'
end
