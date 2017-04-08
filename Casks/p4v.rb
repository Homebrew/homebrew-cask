cask 'p4v' do
  version '2017.1'
  sha256 'b015a82a7c0bd492edb972dc542b377a7633bad2148e4b3e2d800f7df0c9297a'

  url "http://cdist2.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*}, '\1')}/bin.macosx1011x86_64/P4V.dmg"
  name 'Perforce Visual Client'
  name 'P4V'
  homepage 'https://www.perforce.com/helix-visual-client'

  app 'p4v.app'
  app 'p4admin.app'
  app 'p4merge.app'
  binary 'p4vc'

  zap delete: [
                '~/Library/Preferences/com.perforce.p4v',
                '~/Library/Preferences/com.perforce.p4v.plist',
                '~/Library/Saved Application State/com.perforce.p4v.savedState',
              ]
end
