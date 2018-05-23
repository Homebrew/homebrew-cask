cask 'hab' do
  version '0.55.0-20180321215236'
  sha256 'fdc87f2e82b8ef0b82f5b9fb56b56b24a45277e92f48e0ef58fdd6270513c53a'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '295b1b731b162737af164e49efc4adad2b90175ba749527de38a69dbacf09804'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
