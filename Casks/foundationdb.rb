cask :v1 => 'foundationdb' do
  version '3.0.2'
  sha256 '5ba891e781277663e390ae24267261c80e97289e309aa3a48f8c93adfebad7f8'

  url 'https://foundationdb.com/downloads/f-dtxixofixocu/I_accept_the_FoundationDB_Community_License_Agreement/key-value-store/3.0.2/FoundationDB-3.0.2.pkg'
  name 'FoundationDB Key-Value Store'
  homepage 'https://foundationdb.com/'
  license :gratis

  pkg 'FoundationDB-3.0.2.pkg'
  uninstall :pkgutil => ['FoundationDB-server', 'FoundationDB-clients'],
            :script => '/usr/local/foundationdb/uninstall-FoundationDB.sh'
end
