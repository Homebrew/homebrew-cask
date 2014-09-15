class Majic < Cask
  version 'latest'
  sha256 :no_check

  url 'http://erikhinterbichler.com/blog/wp-content/uploads/software/Majic.zip'
  appcast 'http://erikhinterbichler.com/blog/wp-content/uploads/updates/majic-update.xml'
  homepage 'http://erikhinterbichler.com/apps/majic/'

  app 'Majic.app'
end
