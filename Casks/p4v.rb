cask 'p4v' do
  version '2015.2-1458499'
  sha256 '2a77a8c0270a158432d6c571828c397ef3bd20b911bbbfb3db810845dc2995bc'

  url "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*}, '\1')}/bin.macosx107x86_64/P4V.dmg"
  name 'Perforce Visual Client'
  name 'P4V'
  homepage 'https://www.perforce.com/product/components/perforce-visual-client'

  app 'p4v.app'
  binary 'p4vc'

  zap delete: [
                '~/Library/Preferences/com.perforce.p4v',
                '~/Library/Preferences/com.perforce.p4v.plist',
                '~/Library/Saved Application State/com.perforce.p4v.savedState',
              ]
end
