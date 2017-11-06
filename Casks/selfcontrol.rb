cask 'selfcontrol' do
  if MacOS.version <= :snow_leopard
    version '1.5.1'
    sha256 'd3823a1e9ba0b47dc2cb39c93cd51837c2dafc7d5a5a564825f4a440fd2ab9ad'
  else
    version '2.2.2'
    sha256 '2cf92f8f142d630ed8cf77308599fa00fd610ec9fbafafcea27773974afdd4e1'
  end

  url "http://downloads.selfcontrolapp.com/SelfControl-#{version}.zip"
  appcast 'https://selfcontrolapp.com/SelfControlAppcast.xml',
          checkpoint: '1c9bb5002cfcf7deed8d96532d27ba3a07ffb38e9dbe2354ae7a0eddf000842a'
  name 'SelfControl'
  homepage 'https://selfcontrolapp.com/'

  auto_updates true

  app 'SelfControl.app'

  zap delete: '~/Library/Preferences/org.eyebeam.SelfControl.plist'
end
