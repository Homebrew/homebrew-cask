cask 'noise-machine' do
  version '1.15'
  sha256 '6f2a0441eec72294b41805b03bf7c8675bfa721ba3faadd53527c61cf8ed1534'

  url 'http://www.publicspace.net/download/signedNM.zip'
  appcast 'http://www.publicspace.net/app/nm.xml'
  name 'Noise Machine'
  homepage 'http://www.publicspace.net/NoiseMachine/'

  app 'Noise Machine.app'
end
