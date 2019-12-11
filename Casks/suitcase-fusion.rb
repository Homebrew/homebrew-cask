cask 'suitcase-fusion' do
  version '21.0.0'
  sha256 '38a3c56392b88856a95a9dfd6a04f33102eed7a5ba9e675d5d054ce33acbcb5c'

  url "https://bin.extensis.com/SuitcaseFusion-M-#{version.dots_to_hyphens}.dmg"
  appcast "https://www.extensis.com/support/suitcase-fusion-#{version.major}/release-notes/"
  name 'Extensis Suitcase Fusion'
  homepage 'https://www.extensis.com/suitcase-fusion/'

  depends_on macos: '>= :high_sierra'

  app 'Suitcase Fusion.app'
end
