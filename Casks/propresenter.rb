cask 'propresenter' do
  version '6.0.20_b15120'
  sha256 'b8d917f70d388a5e8b122dab3e9ba9c36b8d2df6b39169c3daa81b1e50923be0'

  url "https://www.renewedvision.com/downloads/ProPresenter6_#{version}.dmg"
  appcast 'https://www.renewedvision.com/update/ProPresenter6.php',
          checkpoint: '3d3b90a47b789682f627112607e49c00acb6e2715952b7a08cf5664630f53f06'
  name 'ProPresenter'
  homepage 'https://www.renewedvision.com/propresenter.php'
  license :commercial

  app 'ProPresenter 6.app'
end
