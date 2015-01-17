cask :v1 => 'airdroid' do
  version '3.0.3'
  sha256 'd42a49480bbd054f704dda3ee674e2b3767fbd092b330fe30740577e088632a6'

  url "http://dl.airdroid.com/AirDroid_Desktop_Client_#{version}.dmg"
  name 'AirDroid'
  homepage 'http://airdroid.com'
  license :closed

  app 'AirDroid.app'
end
