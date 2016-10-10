cask 'hab' do
  version '0.10.2-20160930234832'
  sha256 '1a819160da57d80d313378b56989b2b101eca00d95e9f8ec7aad2d5b419bab39'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  name 'Habitat'
  homepage 'www.habitat.sh'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
