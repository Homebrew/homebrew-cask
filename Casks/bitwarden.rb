cask 'bitwarden' do
  version '1.2.0'
  sha256 'b21722f05332970c54b79d9b067056424f8ea86cbea5a86fa30e12179a59d7ad'

  # github.com/bitwarden/desktop was verified as official when first introduced to the cask
  url "https://github.com/bitwarden/desktop/releases/download/v#{version}/bitwarden-#{version}-mac.zip"
  appcast 'https://github.com/bitwarden/desktop/releases.atom',
          checkpoint: 'd35bd4d360bf22a1ccfbe3b2d5b1ec719e42d5ae6bf5559ce49165fc75ec20e9'
  name 'Bitwarden'
  homepage 'https://bitwarden.com/'

  app 'Bitwarden.app'
end
