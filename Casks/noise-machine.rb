cask 'noise-machine' do
  if MacOS.release <= :leopard
    version '1.0'
    sha256 '8b8d531688c259ffe4cb31fb75ec77f55bca16405fc75c1c77393f3b7e8bd447'
    url 'http://www.publicspace.net/download/NoiseMachine_Leopard.dmg'
  elsif MacOS.release <= :snow_leopard
    version '1.05'
    sha256 '501415e60204b77e8e15b46ea08c3f8526cfeb28e6ca11c647b7bffb1f3b9d28'
    url 'http://www.publicspace.net/download/NoiseMachine_Snow_Leopard.dmg'
  else
    version '1.12'
    sha256 '393738585ec7bb90bc2f43ac30a63c8699e4fcaffc567135635a549893d7e9b9'
    url 'http://www.publicspace.net/download/NoiseMachine.dmg'
  end

  appcast 'http://www.publicspace.net/app/nm.xml',
          checkpoint: '376e68d3f535814a7205c1e5131bf3ef411e1bf022712fde098d3020304ad710'
  name 'Noise Machine'
  homepage 'http://www.publicspace.net/NoiseMachine'
  license :commercial

  app 'Noise Machine.app'
end
