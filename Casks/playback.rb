cask 'playback' do
  version '1.6.0'
  sha256 '32588de0f9f8c6281cae11e4f64f5f4e4d3919f5d8b94d03be4d8552fbd8f0a8'

  # github.com/mafintosh/playback was verified as official when first introduced to the cask
  url "https://github.com/mafintosh/playback/releases/download/v#{version}/Playback.app.zip"
  appcast 'https://github.com/mafintosh/playback/releases.atom',
          checkpoint: '7ad205703ce9b96d1788c7c5c69d653e0882d9311b8abbb1229a358db2f73dce'
  name 'Playback'
  homepage 'https://mafintosh.github.io/playback/'
  license :mit

  app 'Playback.app'
end
