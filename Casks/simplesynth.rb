cask :v1 => 'simplesynth' do
  version '1.1'
  sha256 '5d70295d5a72075a26b158f5a92b1488170e8ff569f0a52c4e5e5bcfe7ffcdb2'

  url "https://s3.amazonaws.com/notahat/SimpleSynth-#{version}.zip"
  homepage 'http://notahat.com/simplesynth/'
  license :unknown    # todo: improve this machine-generated value

  app 'SimpleSynth.app'
end
