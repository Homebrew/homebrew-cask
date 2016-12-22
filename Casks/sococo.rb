cask 'sococo' do
  version '0.5.0-11996'
  sha256 '61d6ef148fd893bc5c1e88be73f960bc38bb41b452cbd57b40aa48d806bf17d6'

  url "https://s.sococo.com/rs/client/mac/Sococo-#{version}.dmg"
  name 'Sococo'
  homepage 'https://www.sococo.com/'

  depends_on macos: '>= :lion'

  app 'Sococo.app'
end
