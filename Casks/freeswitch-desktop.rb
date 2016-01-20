cask 'freeswitch-desktop' do
  version '1.2.0'
  sha256 '66bcd5b0ad7caa35c47cf098cf745b6898ff03953ee319ee0a7595f1bf79998d'

  url "https://github.com/pablote/fs-mgmt/releases/download/v#{version}/freeswitch-desktop-osx64.zip"
  appcast 'https://github.com/pablote/fs-mgmt/releases.atom',
          checkpoint: '62ecd504db1602a8c21584e7a71b0d9616f38909fc9ef16ab9cd21b85042213c'
  name 'Freeswitch Desktop'
  homepage 'https://github.com/pablote/fs-mgmt'
  license :apache

  app 'Freeswitch Desktop.app'
end
