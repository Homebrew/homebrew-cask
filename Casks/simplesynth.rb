cask 'simplesynth' do
  version '1.1'
  sha256 '5d70295d5a72075a26b158f5a92b1488170e8ff569f0a52c4e5e5bcfe7ffcdb2'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/notahat/SimpleSynth-#{version}.zip"
  name 'SimpleSynth'
  homepage 'http://notahat.com/simplesynth/'
  license :mit

  app 'SimpleSynth.app'
end
