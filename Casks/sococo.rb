cask 'sococo' do
  version '0.3.9-9509'
  sha256 'ff7123c64b062739d07906947482cf6e6bdfd7098f6846fb0578499f52daa50a'

  url "https://s.sococo.com/rs/client/mac/Sococo-#{version}.dmg"
  name 'Sococo'
  homepage 'https://www.sococo.com/'

  depends_on macos: '>= :lion'

  app 'Sococo.app'
end
