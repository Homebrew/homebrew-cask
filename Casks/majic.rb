cask 'majic' do
  version :latest
  sha256 :no_check

  url 'http://erikhinterbichler.com/blog/wp-content/uploads/software/Majic.zip'
  appcast 'http://erikhinterbichler.com/blog/wp-content/uploads/updates/majic-update.xml',
          :checkpoint => 'b906c7b79f9f5b2d14af9ba912d25d07c14b717d16f0bce2fe95fa1417b0c9e8'
  name 'Majic'
  homepage 'http://erikhinterbichler.com/apps/majic/'
  license :gratis

  app 'Majic.app'
end
