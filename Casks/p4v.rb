cask 'p4v' do
  version '2015.2-1312139'
  sha256 '6f64cca4e84d344c5f420e58a72bd07c4fbf5f3eb9665b165acd8baa36c18eb9'

  url "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*}, '\1')}/bin.macosx107x86_64/P4V.dmg"
  name 'Perforce Visual Client'
  name 'P4V'
  homepage 'https://www.perforce.com/product/components/perforce-visual-client'
  license :gratis

  app 'p4v.app'
  binary 'p4vc'

  zap delete: [
                '~/Library/Preferences/com.perforce.p4v',
                '~/Library/Preferences/com.perforce.p4v.plist',
                '~/Library/Saved Application State/com.perforce.p4v.savedState',
              ]
end
