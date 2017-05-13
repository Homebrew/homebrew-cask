cask 'mirador' do
  version '1.4.1'
  sha256 '654288f08d66ae18372c422260b891d2d89126eca76ea51fea40205974c135c9'

  # github.com/mirador/mirador was verified as official when first introduced to the cask
  url "https://github.com/mirador/mirador/releases/download/#{version}/mirador-macosx-#{version}.zip"
  appcast 'https://github.com/mirador/mirador/releases.atom',
          checkpoint: 'df6a4217f3c2d1678517a01d367755175a59d10d91c037ba1e15c012999b2ebf'
  name 'Mirador'
  homepage 'https://fathom.info/mirador/'

  app 'Mirador.app'
end
