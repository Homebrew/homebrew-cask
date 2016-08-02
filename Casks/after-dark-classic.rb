cask 'after-dark-classic' do
  version :latest
  sha256 :no_check

  url 'ftp://www.infinisys.co.jp/online/online_afterdarkclassicset_e.dmg.gz'
  name 'After Dark Classic Set'
  homepage 'http://en.infinisys.co.jp/product/afterdarkclassicset/index.shtml'
  license :commercial

  container nested: "#{token}-#{version}.dmg"

  pkg 'ClassicSet.pkg'

  uninstall delete: [
                      '/Library/Screen Savers/Boris.saver',
                      '/Library/Screen Savers/Flying Toasters.saver',
                      '/Library/Screen Savers/Mowing Man.saver',
                    ]

  zap delete: [
                '~/Library/Preferences/ByHost/jp.co.infinisys.boris.*.plist',
                '~/Library/Preferences/ByHost/jp.co.infinisys.flyingtoasters.*.plist',
                '~/Library/Preferences/ByHost/jp.co.infinisys.mowingman.*.plist',
              ]
end
