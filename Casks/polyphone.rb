cask 'polyphone' do
  version '1.9'
  sha256 '40d6a28e941d7ccc398782154f93290e1f9e3fbe7b9754c394f32e6a92636efa'

  url "https://polyphone-soundfonts.com/en/download/file/559-polyphone-#{version.dots_to_hyphens}-dmg/latest/download"
  name 'Polyphone'
  homepage 'https://polyphone-soundfonts.com/'

  app 'polyphone.app'
end
