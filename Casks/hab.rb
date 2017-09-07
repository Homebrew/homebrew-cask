cask 'hab' do
  version '0.30.2-20170822230736'
  sha256 '870f0bf1580bc331a2f0e4955541a3184f0186ca33c55bc24795106c1d2118d4'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: 'b5f8f25bb51fda2e7a303241c7c858fc0d2da4a55227cf10408bbb1e9ef498d7'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
