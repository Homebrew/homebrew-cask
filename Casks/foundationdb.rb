cask 'foundationdb' do
  version '5.1.5'
  sha256 'a611e9a86d81e7039d2b026c7cc28a7c5b431111fbbce9ed95345905e6eb7b64'

  url "https://www.foundationdb.org/downloads/#{version}/macOS/installers/FoundationDB-#{version}.pkg"
  appcast 'https://www.foundationdb.org/download/',
          checkpoint: '16c41d63b4bc7290f1118e848f8d5a1079faed2311463ba0749a5a4b8b70be66'
  name 'FoundationDB'
  homepage 'https://www.foundationdb.org/'

  pkg "FoundationDB-#{version}.pkg"

  uninstall pkgutil:   [
                         'FoundationDB-clients',
                         'FoundationDB-server',
                       ],
            launchctl: 'com.foundationdb.fdbmonitor'
end
