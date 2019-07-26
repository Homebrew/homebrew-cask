cask 'inviska-rename' do
  version '9.0'
  sha256 'd7a6b85ebdd4abb014a2a2f7ddce2e9a3c024220b1dc31b96a6a244e4d3df305'

  url "https://www.inviska.com/files/rename/mac/Inviska_Rename-#{version}.tar.gz"
  appcast 'https://www.inviska.com/rename/'
  name 'Inviska Rename'
  homepage 'https://www.inviska.com/rename/'

  depends_on macos: '>= :sierra'

  app 'Inviska Rename.app'
end
