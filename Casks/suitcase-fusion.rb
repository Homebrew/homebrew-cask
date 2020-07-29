cask 'suitcase-fusion' do
  version '21.1.1'
  sha256 '8348d09cd84cdaf16cfa4fccf28b79008f0516deb88c76ce3eeccb961b709337'

  url "https://bin.extensis.com/SuitcaseFusion-M-#{version.dots_to_hyphens}.dmg"
  appcast "https://www.extensis.com/support/suitcase-fusion-#{version.major}/release-notes/"
  name 'Extensis Suitcase Fusion'
  homepage 'https://www.extensis.com/suitcase-fusion/'

  depends_on macos: '>= :high_sierra'

  app 'Suitcase Fusion.app'
end
