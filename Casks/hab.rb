cask 'hab' do
  version '0.13.1-20161115013826'
  sha256 '35fba83a2d6e79d20c135ff21705651fcecb2a2fea34872ea8b3208a0278be07'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
