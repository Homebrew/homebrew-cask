cask 'minishift' do
  version '1.3.1'
  sha256 '52cf602df1f5bec59b78f54625513eae3ed90150096e2cf29237e1cc3cdbd96d'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: 'a89c6e022f360d6b0b4715aab07e78dfed5173230c27944d98caf6f41a06921a'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary 'minishift'
end
