cask :v1 => 'p4v' do
  version '2014.2-985932'
  sha256 '766b6f6b8669f889f1186dd96408b5b8af6b9dc6c602784d6d6ea25130007709'
 
  url "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*},'\1')}/bin.macosx107x86_64/P4V.dmg"
  name 'P4V'
  name 'Perforce Visual Client'
  homepage 'http://www.perforce.com/product/components/perforce-visual-client'
  license :gratis
  tags :vendor => 'Perforce'

  app 'p4v.app'
  binary 'p4vc'

  zap :delete => [
                  '~/Library/Preferences/com.perforce.p4v',
                  '~/Library/Preferences/com.perforce.p4v.plist',
                  '~/Library/Saved Application State/com.perforce.p4v.savedState'
                 ]
end
