cask 'hab' do
  version '0.29.1-20170810235219'
  sha256 '18735944b6ff1ed6907bc3cd4265778399628a5bc893445791895e9df18a4b0a'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '72a716e7a6468c81a021bd06acbb53680d7733d0c518d03b776e460f5fdf3284'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
