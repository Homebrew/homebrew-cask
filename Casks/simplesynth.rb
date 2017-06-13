cask 'simplesynth' do
  version '1.1'
  sha256 '5d70295d5a72075a26b158f5a92b1488170e8ff569f0a52c4e5e5bcfe7ffcdb2'

  # amazonaws.com/notahat was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/notahat/SimpleSynth-#{version}.zip"
  appcast 'http://notahat.com/simplesynth/',
          checkpoint: '3cb96e0949843a3f34dd8c0c605942cdeafc0379022684cc469174c5a0db085e'
  name 'SimpleSynth'
  homepage 'http://notahat.com/simplesynth/'

  app 'SimpleSynth.app'
end
