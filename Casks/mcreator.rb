cask 'mcreator' do
  version '2020.3'
  sha256 'd3c4b39886ae70f10592502c02834b5ddfcadc4c52c4eb062cff24fa404c691a'

  url "https://mcreator.net/repository/#{version.dots_to_hyphens}/MCreator%20#{version}%20Mac%2064bit.dmg"
  appcast 'https://mcreator.net/changelog'
  name 'MCreator'
  homepage 'https://mcreator.net/'

  app 'MCreator.app'

  zap trash: '~/.mcreator'
end
