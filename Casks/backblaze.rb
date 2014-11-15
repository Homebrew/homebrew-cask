cask :v1 => 'backblaze' do
  version :latest
  sha256 :no_check

  url 'https://secure.backblaze.com/mac/install_backblaze.dmg'
  homepage 'https://www.backblaze.com/'
  license :commercial

  installer :manual => 'Backblaze Installer.app'
end
