cask 'hab' do
  version '0.11.0-20161013184001'
  sha256 'aa3264d8e94d454b39389f17d3be6e6121853c6e5d885f49d6d71df70bd95714'

  # habitat.bintray.com was verified as official when first introduced to the cask
  url "https://habitat.bintray.com/stable/darwin/x86_64/hab-#{version}-x86_64-darwin.zip"
  name 'Habitat'
  homepage 'www.habitat.sh'

  depends_on cask: 'docker'

  binary "hab-#{version}-x86_64-darwin/hab"
end
