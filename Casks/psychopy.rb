cask :v1 => 'psychopy' do
  version '1.81.00'
  sha256 '121a3ee098ea6a978e7888da8de6dc3a096205455518aabf9e31edf21bbe0183'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/psychpy/StandalonePsychoPy-#{version}-OSX.dmg"
  homepage 'http://www.psychopy.org/'
  license :oss

  app 'PsychoPy2.app'
end
