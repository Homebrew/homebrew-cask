cask 'cctalk' do
  version '7.3.1,692'
  sha256 'e9e372308560f3438f56769cfc0918dfa725cc192a940fb7a307eb3c4f62ab58'

  # n1other.hjfile.cn was verified as official when first introduced to the cask
  url "https://n1other.hjfile.cn/wx/CCtalk/#{version.after_comma}/CCtalk.#{version.before_comma}-#{version.after_comma}.pkg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  depends_on macos: '>= :yosemite'

  pkg "CCtalk.#{version.before_comma}-#{version.after_comma}.pkg"

  uninstall pkgutil: 'com.hujiang.mac.cctalk'
end
