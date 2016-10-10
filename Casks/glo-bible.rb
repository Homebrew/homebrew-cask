cask 'glo-bible' do
  version :latest
  sha256 :no_check

  # immersion.vo.llnwd.net was verified as official when first introduced to the cask
  url 'http://immersion.vo.llnwd.net/o42/pub/glo/mac/en-us/Glo.dmg'
  name 'Glo Bible'
  homepage 'https://globible.com/gloformac/'

  app 'Glo Bible.app'
end
