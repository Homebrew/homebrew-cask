cask 'minishift' do
  version '1.15.1'
  sha256 'a473f1ba778e1e2f107894fc0dd920f6694b95e890064df5eda84f8630db542e'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: 'c24ccb01ddcd130c977264569967e809b2bdc8d44acd00f75930a99e64b1e508'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
