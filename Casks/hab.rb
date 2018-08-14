cask 'hab' do
  version '0.59.0-20180712162348'
  sha256 '541982ac05dbf250018573b8a7efe7e3b9801b84cb8a2f09fee4198aa94c1ab4'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
