cask 'hab' do
  version '0.38.0-20171026215116'
  sha256 '2ffcbf5520445ff0471b71657bb24005e11adb94644d6c4e5f953e68efb74df4'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: 'a63d8468e5986f9eb9d1152563e63147deb3798cb63da9303ebc12eeb91851ab'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
