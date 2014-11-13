cask :v1 => 'psychopy' do
  version '1.79.01'
  sha256 'a2b174aee30ca4a8858238404adfd9271da9ec14243aa30be0b7f9a6abb047b8'

  url "https://downloads.sourceforge.net/sourceforge/psychpy/StandalonePsychoPy-#{version}-OSX.dmg"
  homepage 'http://www.psychopy.org/'
  license :oss

  app 'PsychoPy2.app'
end
