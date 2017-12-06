cask 'polyphone' do
  version '1.9'
  sha256 '40d6a28e941d7ccc398782154f93290e1f9e3fbe7b9754c394f32e6a92636efa'

  url "https://polyphone-soundfonts.com/judownload/0_1512442550_rk9xVE/polyphone-#{version}.dmg"
  name 'Polyphone'
  homepage 'https://polyphone-soundfonts.com/'

  app 'Polyphone.app'
end
