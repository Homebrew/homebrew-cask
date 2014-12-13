cask :v1 => 'foundationdb-key-value-store' do
  version '3.0.2'
  sha256 '5ba891e781277663e390ae24267261c80e97289e309aa3a48f8c93adfebad7f8'

  url "https://foundationdb.com/downloads/f-dtxixofixocu/I_accept_the_FoundationDB_Community_License_Agreement/key-value-store/#{version}/FoundationDB-#{version}.pkg"
  name 'FoundationDB Key-Value Store'
  name 'FoundationDB'
  homepage 'https://foundationdb.com/'
  license :freemium

  pkg "FoundationDB-#{version}.pkg"

  uninstall :script => '/usr/local/foundationdb/uninstall-FoundationDB.sh',
            :pkgutil => [
                        'FoundationDB-server',
                        'FoundationDB-clients',
                        ]
end
