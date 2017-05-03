cask 'minishift' do
  version '1.0.0'
  sha256 'a6a10705ed2e8d3bc2bd43b0d09ad53aebf6b27b4192c4552cf425efd9af3d71'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '4547ced962d75dcd51dcca6812f4b2423390e99dce57fabaed35772bcddec0da'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary 'minishift'
end
