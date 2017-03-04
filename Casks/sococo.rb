cask 'sococo' do
  version '0.5.0-11996'
  sha256 '61d6ef148fd893bc5c1e88be73f960bc38bb41b452cbd57b40aa48d806bf17d6'

  url "https://s.sococo.com/rs/client/mac/Sococo-#{version}.dmg"
  appcast 'https://s.sococo.com/rs/client/latest.json',
          checkpoint: '365f5e06b9f00d7a40177aaf3845ef720279142dfccd127e17a0a39c2444faf0'
  name 'Sococo'
  homepage 'https://www.sococo.com/'

  depends_on macos: '>= :lion'

  app 'Sococo.app'
end
