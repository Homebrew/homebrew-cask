cask 'selfcontrol' do
  if MacOS.release <= :snow_leopard
    version '1.5.1'
    sha256 'd3823a1e9ba0b47dc2cb39c93cd51837c2dafc7d5a5a564825f4a440fd2ab9ad'
  else
    version '2.1'
    sha256 '6a2b463e1c8b7b49b72b194f0160851738c83b09c543df931209f24e32b41526'
  end

  url "http://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  appcast 'https://selfcontrolapp.com/SelfControlAppcast.xml',
          :checkpoint => '358e7ca232d529ba1bc202f7d5ba68d323140394eb22013c1c9324916483f608'
  name 'SelfControl'
  homepage 'https://selfcontrolapp.com/'
  license :gpl

  auto_updates true

  app 'SelfControl.app'

  zap :delete => '~/Library/Preferences/org.eyebeam.SelfControl.plist'
end
