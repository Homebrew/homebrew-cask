cask 'hab' do
  version '0.39.1-20171117234750'
  sha256 'ca735f66c701a74285ccae6dfef2427fbdc2322cb658610e40c85c5f650e5c2e'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '66ba2eabc5e064f9231d0ca3761346b8502c0979de6b4284e643a6801741e618'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
