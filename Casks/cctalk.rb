cask 'cctalk' do
  version '7.3.14.8'
  sha256 'd74846b88e0e09025f765bbd77c4b1d9327746ee32c4df32b8a05af6aebae574'

  # cc.hjfile.cn was verified as official when first introduced to the cask
  url "https://cc.hjfile.cn/cc/#{version}/8/1/103/#{version}.dmg"
  appcast 'https://cc.hjfile.cn/mac/update/info.xml'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  depends_on macos: '>= :yosemite'

  app 'CCtalk.app'
end
