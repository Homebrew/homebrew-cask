cask 'hab' do
  version '1.6.0'
  sha256 'fb0d6ad29e69a0e458b427b6dddd53ee523399888b10fca52ef4ac6f9d03e06a'

  # habitat.bintray.com/ was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
