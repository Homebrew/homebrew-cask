cask 'launchcontrol' do
  version '1.26.2'
  sha256 '24aeaae3cb8e5516abaacebf3cf60bb328f4cc816176c4502029c2772982d11c'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: '30637ce667265ce747c7f2700646a18cfdd165d18f372fefff370f12f19a644f'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
