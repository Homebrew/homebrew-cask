cask 'bitwarden' do
  version '1.0.0'
  sha256 '7b7d4cb38a0b4f1d2050b8f8d513b1ebc1d968e9c361d85b7e958b4703c2d834'

  # github.com/bitwarden/desktop was verified as official when first introduced to the cask
  url "https://github.com/bitwarden/desktop/releases/download/v#{version}/bitwarden-#{version}-mac.zip"
  appcast 'https://github.com/bitwarden/desktop/releases.atom',
          checkpoint: 'c38806d5d92c19a3bad9d50569bd5e30ab99c2f53dd7e4591667517ced2f1a83'
  name 'Bitwarden'
  homepage 'https://bitwarden.com/'

  app 'Bitwarden.app'
end
