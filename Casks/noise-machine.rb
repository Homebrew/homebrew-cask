cask 'noise-machine' do
  if MacOS.version <= :snow_leopard
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
  homepage 'http://www.publicspace.net/NoiseMachine/'

  app 'Noise Machine.app'
end
