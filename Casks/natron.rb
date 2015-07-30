cask :v1 => 'natron' do
  version '1.2.1'
  sha256 '39478124e8814dea23e8c2d47afb8862992ef5510b8776b441b04b8d1b7553cd'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/natron/Natron_MacOSX_x86-64bits_v#{version}.dmg"
  name 'Natron'
  homepage 'https://natron.inria.fr/'
  license :mpl

  app 'Natron.app'
end
