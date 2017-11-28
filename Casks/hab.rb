cask 'hab' do
  version '0.40.0-20171128173702'
  sha256 'f5a6293da056c7432205db94b60776f9573c8bf34af5b87b9dda3b98a98e045a'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '915ac94023d077cad5aa5f14b9d703b11815db833636ce53e64e158d4181989d'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
