cask :v1 => 'p4v' do
  version '2014.3-1007540'
  sha256 '07eac08f6bfb32e4a79bf47582116de8532fe0b18d91a014e1cd80861d6f0909'

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
