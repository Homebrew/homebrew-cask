cask 'bitwarden' do
  version '0.0.8'
  sha256 '84f1b05653d681c1b27e178a970f40be840599466552f6a5155eb3f615c54a86'

  # github.com/bitwarden/desktop was verified as official when first introduced to the cask
  url "https://github.com/bitwarden/desktop/releases/download/v#{version}/bitwarden-#{version}-mac.zip"
  appcast 'https://github.com/bitwarden/desktop/releases.atom',
          checkpoint: 'b636b0d23d1996e6e171c287912cf6c3bce7e272d763c4c97042268075bcc914'
  name 'Bitwarden'
  homepage 'https://bitwarden.com/'

  app 'Bitwarden.app'
end
