cask 'minishift' do
  version '0.9.0'
  sha256 '885251315ba9e3e7e3cb2687c8cbf534d8cfffd6c860140c739bbc37a6f78621'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-darwin-amd64"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '98ed8bd13a92b9ef0c2179154a9ba6d7347a2d883c455068f3b3f5343b9d22d2'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  container type: :naked

  binary 'minishift-darwin-amd64', target: 'minishift'
end
