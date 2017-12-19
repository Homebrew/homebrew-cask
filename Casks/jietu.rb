cask 'jietu' do
  version '2.2.1(10927)'
  sha256 '60cdd6a18092a4f889343595d64a35aa78dbd747f6f4dd9cd47c35f868d7e3d2'

  url "https://dldir1.qq.com/invc/tt/Jietu_#{version}.dmg"
  name 'Jietu'
  name '截图'
  homepage 'http://jietu.qq.com/'

  app 'Jietu.app'

  uninstall quit:      'com.tencent.JietuMac',
            launchctl: 'com.tencent.JietuHelperMac'

  zap trash: [
               '~/Library/Application Support/Jietu',
               '~/Library/Caches/com.tencent.JietuMac',
               '~/Library/Preferences/com.tencent.JietuMac.plist',
             ]
end
