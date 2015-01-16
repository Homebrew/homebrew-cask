cask :v1 => 'natron' do
  version '1.1.0'
  sha256 'e06352b0b11acbf0bbeb2d7b3258916233b1fb41fadfff08257fdc50d9738b14'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/natron/Natron_MaxOSX_x86_64bits_v#{version}.dmg"
  name 'Natron'
  homepage 'https://natron.inria.fr/'
  license :mpl

  app 'Natron.app'
end
