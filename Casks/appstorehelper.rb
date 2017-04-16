cask :v1 => 'appstorehelper' do
  version '0.65alpha'
  sha256 'ee98c1e1d46e77b5486e7a416948a04eeba56e7ff8a7af4fe2235bfd0e2a95cf'

  url 'http://hitoriblog.com/wp-content/uploads/2011/05/AppStoreHelper-0.65alpha.zip'
  name 'AppStoreHelper'
  homepage 'http://hitoriblog.com/?p=3051'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'AppStoreHelper-0.65alpha/AppStoreHelper.app'
end
