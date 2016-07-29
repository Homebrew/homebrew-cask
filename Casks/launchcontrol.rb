cask 'launchcontrol' do
  version '1.27'
  sha256 'ceb47e1fcd2ab0c87128ce31812d99a30f43d4a6d182c238820d2f69e3dee461'

  url "http://www.soma-zone.com/download/files/LaunchControl_#{version}.tar.bz2"
  appcast 'http://www.soma-zone.com/LaunchControl/a/appcast.xml',
          checkpoint: '9fd1cdaa0f71541425a7944d91d698983100016b76631663b7ab9bef8e68b0e8'
  name 'LaunchControl'
  homepage 'http://www.soma-zone.com/LaunchControl/'
  license :commercial

  app 'LaunchControl.app'
end
