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
    version '1.13'
    sha256 '4e64af7d633fcf90620bd70b26f266ab127e91d3abd099dafb366cf2b570532e'
    url 'http://www.publicspace.net/download/NoiseMachine.dmg'
  end

  appcast 'http://www.publicspace.net/app/nm.xml',
          checkpoint: '3fd8dc56e7655c3e15bb7937ec9cf30a51bc492f3481724a53bedeedec2e05fd'
  name 'Noise Machine'
  homepage 'http://www.publicspace.net/NoiseMachine'
  license :commercial

  app 'Noise Machine.app'
end
