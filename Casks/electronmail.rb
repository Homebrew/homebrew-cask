cask 'electronmail' do
  version '4.4.2'
  sha256 '0e88951a333c6979497a89d0831e7efd0f5c2ebf87c5dc276cf27ac47fe337a7'

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-mojave.dmg"
  appcast 'https://github.com/vladimiry/ElectronMail/releases.atom'
  name 'ElectronMail'
  homepage 'https://github.com/vladimiry/ElectronMail'

  app 'ElectronMail.app'
end
