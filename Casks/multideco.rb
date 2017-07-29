cask 'multideco' do
  version '4.14.0'
  sha256 '697321e2448e06d60d1029d5421164c5a83b5bb560c2d549d08b6ba67697ca25'

  url "https://www.hhssoftware.com/multideco/installfile.php?file=multideco_#{version}_i386.dmg&keytag=1538541&qwerty=#{Time.now.to_i - 120}&os=mac_intel",
      referer: "https://www.hhssoftware.com/multideco/installfile.php?os=mac_intel&qwerty=#{Time.now.to_i - 120}&keytag=1538541", user_agent: :fake
  name 'MultiDeco'
  homepage 'https://www.hhssoftware.com/multideco'

  pkg 'MultiDeco_i386.pkg'

  uninstall pkgutil: 'com.hhssoftware.multideco.MultiDeco.pkg'

  zap delete: [
                '~/Saved Application State/com.hhssoftware.multideco.savedState',
              ],
      trash:  [
                '~/Library/Preferences/com.hhssoftware.multideco.plist',
                '~/Library/MultiDeco',
              ]
end
