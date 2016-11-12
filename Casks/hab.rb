cask 'hab' do
  version '0.13.0-20161110233840'
  sha256 'd61728ff808ef45e779bcf4ec84f2271cb9ce2c47ac92f1f09f2e2a898370a7f'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  name 'Habitat'
  homepage 'https://www.habitat.sh'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
