cask 'minishift' do
  version '1.4.1'
  sha256 '9386b713847e454ad43c007c53ce23e609b730b081f75e42264b7485160a96cf'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '5455eb097ac76d06263e3097f498e6a6b6b66c721b490767f1f65773daa633bb'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary 'minishift'
end
