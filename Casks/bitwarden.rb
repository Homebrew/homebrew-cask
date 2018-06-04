cask 'bitwarden' do
  version '1.3.0'
  sha256 'a8e24abd6c28b3deef00b30b9be632ab799e31c1557d26f3c732725b2439acb3'

  # github.com/bitwarden/desktop was verified as official when first introduced to the cask
  url "https://github.com/bitwarden/desktop/releases/download/v#{version}/bitwarden-#{version}-mac.zip"
  appcast 'https://github.com/bitwarden/desktop/releases.atom',
          checkpoint: '146a6f7a095672276291e86889905854a60f1fedc3089ae044d479d08afba234'
  name 'Bitwarden'
  homepage 'https://bitwarden.com/'

  app 'Bitwarden.app'
end
