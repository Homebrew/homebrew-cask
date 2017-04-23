cask 'minishift' do
  version '1.0.0-rc.2'
  sha256 'e2570cf193704311d99a4f4e189e8eb115678bc15803b702b9f6228d0da26d08'

  url "https://github.com/minishift/minishift/releases/download/v1.0.0-rc.2/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '98ed8bd13a92b9ef0c2179154a9ba6d7347a2d883c455068f3b3f5343b9d22d2'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  container type: :gzip

  binary 'minishift-darwin-amd64', target: 'minishift'
end
