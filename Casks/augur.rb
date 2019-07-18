cask 'augur' do
  version '1.15.0'
  sha256 'c22ac263a78b42bcac6f4dfcde46d7487cc35ef24384e31782a8bd7537acb49e'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
