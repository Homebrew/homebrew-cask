cask 'inviska-rename' do
  version '8.0'
  sha256 'a80bdef468ed67d0a4a2d023a6c025cbcf6d372addf3f69df6e8882c0f38f152'

  url "https://www.inviska.com/files/rename/mac/Inviska_Rename-#{version}.tar.gz"
  appcast 'https://www.inviska.com/rename/'
  name 'Inviska Rename'
  homepage 'https://www.inviska.com/rename/'

  depends_on macos: '>= :sierra'

  app 'Inviska Rename.app'
end
