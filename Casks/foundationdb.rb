cask 'foundationdb' do
  version '5.1.5'
  sha256 'a611e9a86d81e7039d2b026c7cc28a7c5b431111fbbce9ed95345905e6eb7b64'

  url "https://www.foundationdb.org/downloads/#{version}/macOS/installers/FoundationDB-#{version}.pkg"
  name 'FoundationDB'
  homepage 'https://www.foundationdb.org/download/'

  pkg "FoundationDB-#{version}.pkg"

  uninstall pkgutil: [
                       'FoundationDB-clients',
                       'FoundationDB-server'
                     ]
end
