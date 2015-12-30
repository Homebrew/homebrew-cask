cask 'majic' do
  version :latest
  sha256 :no_check

  url 'http://erikhinterbichler.com/blog/wp-content/uploads/software/Majic.zip'
  appcast 'http://erikhinterbichler.com/blog/wp-content/uploads/updates/majic-update.xml',
          :sha256 => 'd4ec7a4b69155b784420b671498bc813cd6badb5952139e0c37029a16c9c7118'
  name 'Majic'
  homepage 'http://erikhinterbichler.com/apps/majic/'
  license :gratis

  app 'Majic.app'
end
