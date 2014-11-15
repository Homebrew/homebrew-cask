cask :v1 => 'p4v' do
  version '2014.1-888424'

  if Hardware::CPU.is_32_bit?
    sha256 '03b716dde2c39f4214c1b9b016e151225d8830e2e555b30234c5f9c1d2940a78'
    url "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*},'\1')}/bin.macosx106x86/P4V.dmg"
  else
    sha256 'c5d05d78596fe9b4f83193a11805a027b2652fdf87365de1321e671286fdca3f'
    url "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*},'\1')}/bin.macosx106x86_64/P4V.dmg"
  end

  homepage 'http://www.perforce.com/product/components/perforce-visual-client'
  license :unknown

  app 'p4v.app'
  binary 'p4vc'

  caveats 'p4merge is in a separate Cask'
end
