cask :v1 => 'glo-bible' do
  version :latest
  sha256 :no_check

  url 'http://immersion.vo.llnwd.net/o42/pub/glo/mac/en-us/Glo.dmg'
  homepage 'http://globible.com/gloformac/'
  license :unknown    # todo: improve this machine-generated value

  app 'Glo Bible.app'
end
