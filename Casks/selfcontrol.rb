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
          checkpoint: '9b80d1a6ec2e150de89529f67cacff96f6459801f7f3744125d2e06745500571'
  name 'SelfControl'
  homepage 'https://selfcontrolapp.com/'
  license :gpl

  auto_updates true

  app 'SelfControl.app'

  zap delete: '~/Library/Preferences/org.eyebeam.SelfControl.plist'
end
