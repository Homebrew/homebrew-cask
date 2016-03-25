cask 'kega-fusion' do
  version '3.63i'
  sha256 'f329d3c700a4b1f66e49753f91d27182b1e67bdd0e9bd16c6347f989aa7131ba'

  url "http://www.carpeludum.com/download/Fusion#{version.delete('.')}.zip"
  name 'Kega Fusion'
  homepage 'http://www.carpeludum.com/kega-fusion/'
  license :gratis

  app 'Kega Fusion.app'

  zap delete: [
                '~/Library/Application Support/Kega Fusion',
                '~/Library/Preferences/uk.co.reptilia-design.Kega_Fusion.plist',
                '~/Library/Saved Application State/uk.co.reptilia-design.Kega_Fusion.savedState',
              ]
end
