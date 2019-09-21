cask 'inviska-rename' do
  version '12.0'
  sha256 'a95d82185b5c9c120fc0d32307083a73d8a8ba0019dd623e0513b920317d91ec'

  url "https://www.inviska.com/files/rename/mac/Inviska_Rename-#{version}.tar.gz"
  appcast 'https://www.inviska.com/rename/'
  name 'Inviska Rename'
  homepage 'https://www.inviska.com/rename/'

  depends_on macos: '>= :sierra'

  app 'Inviska Rename.app'
end
