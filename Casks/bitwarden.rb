cask 'bitwarden' do
  version '1.0.5'
  sha256 'f7037edff6bf5e59efeafa87662129762e3284514a61e448352499e0a07cabde'

  # github.com/bitwarden/desktop was verified as official when first introduced to the cask
  url "https://github.com/bitwarden/desktop/releases/download/v#{version}/bitwarden-#{version}-mac.zip"
  appcast 'https://github.com/bitwarden/desktop/releases.atom',
          checkpoint: '8299b04f1edc44fadcfd9f6b03148d6f784055bd144ee4e6197b10cd5cad6c0b'
  name 'Bitwarden'
  homepage 'https://bitwarden.com/'

  app 'Bitwarden.app'
end
