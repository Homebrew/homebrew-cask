cask :v1 => 'p4v' do
  version '2014.2-951414'

  sha256 'cb8f210435de8186af92e5d376a64e6b5f48c67d1b4e892628de88d54ce4918e'
  url "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*},'\1')}/bin.macosx107x86_64/P4V.dmg"

  name 'P4V'
  name 'Perforce Visual Client'
  homepage 'http://www.perforce.com/product/components/perforce-visual-client'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder
  tags :vendor => 'Perforce'

  app 'p4v.app'
  binary 'p4vc'
end
