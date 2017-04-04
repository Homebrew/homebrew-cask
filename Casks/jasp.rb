cask 'jasp' do
  version '0.8.1.1'
  sha256 '9afe2beaa766b322a414bb68377893bcce0b9a582abc0b226f5d20fe84da7b3c'

  url "https://static.jasp-stats.org/JASP-#{version}.dmg"
  name 'JASP'
  homepage 'https://jasp-stats.org/'

  app 'JASP.app'
end
