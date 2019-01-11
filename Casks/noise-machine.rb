cask 'noise-machine' do
  version '1.14'
  sha256 'c45197362b0c8e781505ca534952f5d75761fef6a59e356da9a84ac9905973d6'

  url 'http://www.publicspace.net/download/signedNM.zip'
  appcast 'http://www.publicspace.net/app/nm.xml'
  name 'Noise Machine'
  homepage 'http://www.publicspace.net/NoiseMachine/'

  app 'Noise Machine.app'
end
