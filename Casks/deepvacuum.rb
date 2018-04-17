cask 'deepvacuum' do
  version '1.74'
  sha256 'b0fb384107d0898301cfd50293dd3c43859f3b7314ab69b2df3c92e01364403d'

  url "http://www.hexcat.com/downloads/DeepVacuum-#{version}.dmg"
  name 'DeepVacum'
  homepage 'http://www.hexcat.com/deepvacuum/index.html'

  app 'DeepVacuum.app'

  zap trash: '~/Library/Preferences/com.hexcat.deepvacuum.plist'
end
