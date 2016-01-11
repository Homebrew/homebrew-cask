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
          :sha256 => '459ee4aef328efbefef3c2ee721b373a483ad11ee4b6d6b4b68bbbc018a05272'
  name 'SelfControl'
  homepage 'https://selfcontrolapp.com/'
  license :gpl

  app 'SelfControl.app'

  zap :delete => '~/Library/Preferences/org.eyebeam.SelfControl.plist'
end
