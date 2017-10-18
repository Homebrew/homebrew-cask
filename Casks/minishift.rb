cask 'minishift' do
  version '1.7.0'
  sha256 '42cf58298aeb19dc0f152fa4e437a1ecc99f3ba29eed819ae64da31890fa8f76'

  url "https://github.com/minishift/minishift/releases/download/v#{version}/minishift-#{version}-darwin-amd64.tgz"
  appcast 'https://github.com/minishift/minishift/releases.atom',
          checkpoint: '7c5bdf1beb1034624c2fc00ce04b9444f4182c896c313d3c8519f0860a575bad'
  name 'Minishift'
  homepage 'https://github.com/minishift/minishift'

  binary "minishift-#{version}-darwin-amd64/minishift"
end
