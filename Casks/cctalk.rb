cask 'cctalk' do
  version '7.3.3,718'
  sha256 '96e08fb58f07aeb1b468ae1e7f29591e61396ebd5b428a8d56dafbc5c739f010'

  # n1other.hjfile.cn was verified as official when first introduced to the cask
  url "https://n1other.hjfile.cn/wx/CCtalk/#{version.after_comma}/CCtalk-#{version.before_comma}-#{version.after_comma}.dmg"
  appcast 'http://f1.ct.hjfile.cn/api/AutoUpdate/newupdate/out/mac/cctalk/update/info.xml'
  name 'CCtalk'
  homepage 'https://www.cctalk.com/download/'

  depends_on macos: '>= :yosemite'

  app 'CCtalk.app'
end
