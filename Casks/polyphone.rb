cask 'polyphone' do
  version '1.5'
  sha256 '2eab21617a7cd35252ded1ae0d25404dab8d03a865f6495b61f8990747d1ea20'

  # sourceforge.net/polyphone was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/polyphone/polyphone-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/polyphone/rss',
          checkpoint: 'ebaabb829363b6f03af5a5326b64c8011082ec8ee1561e3704f0e1df4df868e8'
  name 'Polyphone'
  homepage 'http://polyphone.fr'

  app 'Polyphone.app'
end
