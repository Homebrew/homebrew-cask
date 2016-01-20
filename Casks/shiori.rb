cask 'shiori' do
  version '1.0.2'
  sha256 'c832edc2762fdaadc80bfe042ee6f7bd128955e3d7b27bdc5baf5806a0c8a719'

  url "https://aki-null.net/shiori/release/Shiori_#{version}.zip"
  appcast 'https://aki-null.net/shiori/appcast.xml',
          checkpoint: 'b69c3dfa9d53455a156b3db08474ebc53dfb7478f6a4792d7bc1f4b4531fcd85'
  name 'Shiori'
  homepage 'https://aki-null.net/shiori/'
  license :gratis

  app 'Shiori.app'
end
