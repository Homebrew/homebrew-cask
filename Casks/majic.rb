cask 'majic' do
  version '1.0.4'
  sha256 'e415557c399ca592d1864405a0786d8b36070ee40f67a3be8f3ba2a04f89b2ad'

  url 'http://erikhinterbichler.com/blog/wp-content/uploads/software/Majic.zip'
  appcast 'http://erikhinterbichler.com/blog/wp-content/uploads/updates/majic-update.xml',
          checkpoint: 'b906c7b79f9f5b2d14af9ba912d25d07c14b717d16f0bce2fe95fa1417b0c9e8'
  name 'Majic'
  homepage 'http://erikhinterbichler.com/apps/majic/'

  app 'Majic.app'
end
