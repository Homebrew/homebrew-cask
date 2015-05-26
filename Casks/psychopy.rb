cask :v1 => 'psychopy' do
  version '1.82.00'
  sha256 '42f980455815d6dd883d125265ed97cecdf4b366608620dadbf12965f40254ad'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/psychpy/StandalonePsychoPy-#{version}-OSX.dmg"
  name 'PsychoPy'
  homepage 'http://www.psychopy.org/'
  license :oss

  app 'PsychoPy2.app'
end
