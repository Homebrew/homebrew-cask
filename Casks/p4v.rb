cask :v1 => 'p4v' do
  version '2014.1-978848'

  if Hardware::CPU.is_32_bit?
    sha256 'a5af42fbab551e948de9dedf27f4605f5270e17ad4b9e2a42d252ea60e264f54'
    url "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*},'\1')}/bin.macosx106x86/P4V.dmg"
  else
    sha256 'a87fbc6d4eeaffa9547931a6c25a97c29efdbcc49728f38322a8ff532838ac5e'
    url "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*},'\1')}/bin.macosx106x86_64/P4V.dmg"
  end

  homepage 'http://www.perforce.com/product/components/perforce-visual-client'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'p4v.app'
  binary 'p4vc'

  caveats 'p4merge is in a separate Cask'
end
