cask 'prizmo' do
  version '3.1.14'
  sha256 'aaa2d86131c6ecddd026d5e8b5ecb63741b1d4de9cd497fb0a84d5676e922a14'

  url "https://www.creaceed.com/downloads/prizmo#{version.major}_#{version}.zip"
  appcast "https://www.creaceed.com/appcasts/prizmo#{version.major}.xml",
          checkpoint: '823f040828c27187e031384e35b52d4154cc8eb05df0aeda5db18fae25b06747'
  name 'Prizmo'
  homepage 'https://www.creaceed.com/prizmo'

  depends_on macos: '>= :yosemite'

  app 'Prizmo.app'
end
