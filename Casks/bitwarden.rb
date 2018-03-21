cask 'bitwarden' do
  version '1.1.0'
  sha256 'ca56e9d8c42d72c1e50ca154541232e7376687097d05f71176ef995f799d4c5c'

  # github.com/bitwarden/desktop was verified as official when first introduced to the cask
  url "https://github.com/bitwarden/desktop/releases/download/v#{version}/bitwarden-#{version}-mac.zip"
  appcast 'https://github.com/bitwarden/desktop/releases.atom',
          checkpoint: 'a0364de45ad687cccede8b72b1d6c1e682e46068b63ba1942eb91c8d9f6ea0a0'
  name 'Bitwarden'
  homepage 'https://bitwarden.com/'

  app 'Bitwarden.app'
end
