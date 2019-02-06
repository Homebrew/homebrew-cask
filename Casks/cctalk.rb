cask 'cctalk' do
  version '7.3.13.6'
  sha256 'dc9843fb069aa56a2dfa55a4283bb0f7a160cf26348e3f3df6a5f28d607a2e5c'

  # cc.hjfile.cn was verified as official when first introduced to the cask
  url "https://cc.hjfile.cn/cc/#{version}/8/1/103/#{version}.dmg"
  appcast 'https://cc.hjfile.cn/mac/update/info.xml'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  depends_on macos: '>= :yosemite'

  app 'CCtalk.app'
end
