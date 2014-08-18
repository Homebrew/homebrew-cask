class Backblaze < Cask
  version 'latest'
  sha256 :no_check

  url 'https://secure.backblaze.com/mac/install_backblaze.dmg'
  homepage 'https://www.backblaze.com/'

  caveats do
    manual_installer 'Backblaze Installer.app'
  end
end
