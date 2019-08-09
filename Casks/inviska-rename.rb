cask 'inviska-rename' do
  version '10.0'
  sha256 'bbacedee781af6aaefb5dea2e3f48d6dbde5b2e67c6d29475a1b4a91e8bdeff0'

  url "https://www.inviska.com/files/rename/mac/Inviska_Rename-#{version}.tar.gz"
  appcast 'https://www.inviska.com/rename/'
  name 'Inviska Rename'
  homepage 'https://www.inviska.com/rename/'

  depends_on macos: '>= :sierra'

  app 'Inviska Rename.app'
end
