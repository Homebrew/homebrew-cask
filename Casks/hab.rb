cask 'hab' do
  version '0.12.1-20161102174221'
  sha256 '7447018747b0f041b7a1128ffd6a0a3af3062fa865d1d48da908dc3490e354b8'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  name 'Habitat'
  homepage 'https://www.habitat.sh'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
