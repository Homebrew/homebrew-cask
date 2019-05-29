cask 'inviska-rename' do
  version '7.0'
  sha256 'c0d124f3a0ee36d301186562deec445ae135cfcc86a1c279c604cb3a238b1777'

  url "https://www.inviska.com/files/rename/mac/Inviska_Rename-#{version}.tar.gz"
  name 'Inviska Rename'
  homepage 'https://www.inviska.com/rename/'

  app 'Inviska Rename.app'
end
