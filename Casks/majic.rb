cask :v1 => 'majic' do
  version :latest
  sha256 :no_check

  url 'http://erikhinterbichler.com/blog/wp-content/uploads/software/Majic.zip'
  appcast 'http://erikhinterbichler.com/blog/wp-content/uploads/updates/majic-update.xml'
  homepage 'http://erikhinterbichler.com/apps/majic/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Majic.app'
end
