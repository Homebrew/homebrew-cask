cask :v1 => 'polyphone' do
  version '1.5.0'
  sha256 '2eab21617a7cd35252ded1ae0d25404dab8d03a865f6495b61f8990747d1ea20'
  
  url 'http://downloads.sourceforge.net/project/polyphone/polyphone%20releases/1.5/polyphone-1.5.dmg'
  name 'Polyphone'
  homepage 'http://polyphone.fr'
  license :gpl

  app 'Polyphone.app'
end
