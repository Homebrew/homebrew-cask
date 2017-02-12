cask 'keepassxc' do
  version '2.1.1'
  sha256 '3c29d5fc4f287e424fd38811f360ef03a9bf474980c8b6c9b27010a7c8865f15'

  # github.com/keepassxreboot/keepassxc was verified as official when first introduced to the cask
  url "https://github.com/keepassxreboot/keepassxc/releases/download/#{version}/KeePassXC-#{version}-HTTP.dmg"
  appcast 'https://github.com/keepassxreboot/keepassxc/releases.atom',
          checkpoint: '741980d9622baef5c07fb37351dcfa6989720b65ba0904a3cc21a30e491824a2'
  name 'KeePassXC'
  homepage 'https://keepassxc.org/'

  app 'KeePassXC.app'

  zap delete: '~/.keepassxc'
end
