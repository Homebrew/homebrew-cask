cask 'mirador' do
  version '1.4.1'
  sha256 '654288f08d66ae18372c422260b891d2d89126eca76ea51fea40205974c135c9'

  # github.com/mirador/mirador was verified as official when first introduced to the cask
  url "https://github.com/mirador/mirador/releases/download/#{version}/mirador-macosx-#{version}.zip"
  appcast 'https://github.com/mirador/mirador/releases.atom',
          checkpoint: 'db4792b5a0250149a701fa881d53177cb58d4e5e94157ee91c7c9e7b70fcd4f4'
  name 'Mirador'
  homepage 'https://fathom.info/mirador/'

  app 'Mirador.app'
end
