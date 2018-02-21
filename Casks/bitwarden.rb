cask 'bitwarden' do
  version '0.0.7'
  sha256 '06fc5043ebfe84887e4e5770da33a10f446a4c541666a59cea3402ce20151cc9'

  # github.com/bitwarden/desktop was verified as official when first introduced to the cask
  url "https://github.com/bitwarden/desktop/releases/download/v#{version}/bitwarden-#{version}-mac.zip"
  appcast 'https://github.com/bitwarden/desktop/releases.atom',
          checkpoint: '2a55020bc634f9eb8d51475edd91a559daa2c0d6bc41ae1c904f6bf198cef7aa'
  name 'Bitwarden'
  homepage 'https://bitwarden.com/'

  app 'Bitwarden.app'
end
