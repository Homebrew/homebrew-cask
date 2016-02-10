cask 'codekit' do
  version '2.6.1-19102'
  sha256 'a655aa723a9bb762a187ce14c5a70648cf62801cd264e1168b9649287910296b'

  url "https://incident57.com/codekit/files/codekit-#{version.sub(%r{.*-}, '')}.zip"
  appcast 'https://incident57.com/codekit/appcast/ck2appcast.xml',
          checkpoint: '4aaae3cff0a323f32ac3cd065bd98fe730403ef55b69d043ffa180b7ed001cda'
  name 'CodeKit'
  homepage 'https://incident57.com/codekit/'
  license :commercial

  auto_updates true

  app 'CodeKit.app'
end
