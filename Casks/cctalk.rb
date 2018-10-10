cask 'cctalk' do
  version '7.3.4,722'
  sha256 '2b45ee3bf2fee72dc3d00f260697b3998fa34cc6bc9865bd2ca297dd1b446e8c'

  # n1other.hjfile.cn was verified as official when first introduced to the cask
  url "https://n1other.hjfile.cn/wx/CCtalk/#{version.after_comma}/CCtalk_#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'https://cc.hjfile.cn/mac/update/info.xml'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  depends_on macos: '>= :yosemite'

  app 'CCtalk.app'
end
