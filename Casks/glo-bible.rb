cask 'glo-bible' do
  version :latest
  sha256 :no_check

  # llnwd.net is the official download host per the vendor homepage
  url 'http://immersion.vo.llnwd.net/o42/pub/glo/mac/en-us/Glo.dmg'
  name 'Glo Bible'
  homepage 'https://globible.com/gloformac/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Glo Bible.app'
end
