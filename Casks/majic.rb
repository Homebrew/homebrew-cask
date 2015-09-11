cask :v1 => 'majic' do
  version :latest
  sha256 :no_check

  url 'http://erikhinterbichler.com/blog/wp-content/uploads/software/Majic.zip'
  appcast 'http://erikhinterbichler.com/blog/wp-content/uploads/updates/majic-update.xml'
  name 'Majic'
  homepage 'http://erikhinterbichler.com/apps/majic/'
  license :gratis

  app 'Majic.app'
end
