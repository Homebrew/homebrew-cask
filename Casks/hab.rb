cask 'hab' do
  version '0.51.0-20171218220542'
  sha256 'aece1e1e503b039a3180052763698157f3e981c0a8da9a867415ff83d6c630ae'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  appcast 'https://github.com/habitat-sh/habitat/releases.atom',
          checkpoint: '81deb90de6c8ce04568fbc1937aedaa1456c3b8ec2f121a57b5e490beb6752e3'
  name 'Habitat'
  homepage 'https://www.habitat.sh/'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
