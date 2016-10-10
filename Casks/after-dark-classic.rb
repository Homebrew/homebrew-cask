cask 'after-dark-classic' do
  version :latest
  sha256 :no_check

  url 'ftp://www.infinisys.co.jp/online/online_afterdarkclassicset_e.dmg.gz'
  name 'After Dark Classic Set'
  homepage 'http://en.infinisys.co.jp/product/afterdarkclassicset/index.shtml'

  pkg 'ClassicSet.pkg'

  uninstall pkgutil: [
                       'jp.co.infinisys.flyingToastersmowingmanAndBoris.Boris.pkg',
                       'jp.co.infinisys.flyingToastersmowingmanAndBoris.FlyingToasters.pkg',
                       'jp.co.infinisys.flyingToastersmowingmanAndBoris.MowingMan.pkg',
                     ]

  zap delete: [
                '~/Library/Preferences/ByHost/jp.co.infinisys.boris.*.plist',
                '~/Library/Preferences/ByHost/jp.co.infinisys.flyingtoasters.*.plist',
                '~/Library/Preferences/ByHost/jp.co.infinisys.mowingman.*.plist',
              ]
end
