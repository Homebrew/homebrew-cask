cask 'p4merge' do
  version '2018.2-1661700'
  sha256 'f45c0bf6e7f1f773b00225a4dce11a4b25d01a5c6a9aa793ba194a37c9921cb8'

  url "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*}, '\1')}/bin.macosx1013x86_64/P4V.dmg"
  name 'Perforce P4Merge'
  homepage 'https://www.perforce.com/products/helix-apps/merge-diff-tool-p4merge'

  app 'p4merge.app'

  zap trash: [
               '~/Library/Preferences/com.perforce.p4merge',
               '~/Library/Preferences/com.perforce.p4merge.plist',
               '~/Library/Saved Application State/com.perforce.p4merge.savedState',
             ]
end
