cask 'minishift' do
  version '1.0.0-rc.2'
  sha256 'e2570cf193704311d99a4f4e189e8eb115678bc15803b702b9f6228d0da26d08'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '58e3db1b1ba4204b6df8b5f0ecb55526352884c63921f23762c349aba62f1f92'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary 'minishift'
end
