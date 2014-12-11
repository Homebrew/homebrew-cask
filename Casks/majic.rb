cask :v1 => 'majic' do
  version :latest
  sha256 :no_check

  url 'http://erikhinterbichler.com/blog/wp-content/uploads/software/Majic.zip'
  appcast 'http://erikhinterbichler.com/blog/wp-content/uploads/updates/majic-update.xml'
  homepage 'http://erikhinterbichler.com/apps/majic/'
  license :unknown    # todo: improve this machine-generated value

  app 'Majic.app'
end
