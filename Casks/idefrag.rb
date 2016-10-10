cask 'idefrag' do
  version '5.1.2'
  sha256 '65eddc90c80213069ad2fbfafa055ca948059b4f7b8889faa3a817ca7026718f'

  url "https://coriolis-systems.com/downloads/iDefrag-#{version}.dmg"
  name 'iDefrag'
  homepage 'https://coriolis-systems.com/iDefrag/'

  app 'iDefrag.app'
end
