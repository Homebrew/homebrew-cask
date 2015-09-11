cask :v1 => 'freeswitch-desktop' do
  version '1.0.0'
  sha256 'd86a622e3b2bcfdef41f6ab3f1a347e0e37b58ec28725740da27a135681591d5'

  url "https://github.com/pablote/fs-mgmt/releases/download/v#{version}/osx64.zip"
  appcast 'https://github.com/pablote/fs-mgmt/releases.atom'
  name 'Freeswitch Desktop'
  homepage 'https://github.com/pablote/fs-mgmt'
  license :apache

  app 'Freeswitch Desktop.app'
end
