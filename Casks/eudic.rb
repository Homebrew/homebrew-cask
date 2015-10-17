cask :v1 => 'eudic' do
  version :latest
  sha256 :no_check

  url 'http://static.frdic.com/pkg/eudicmac.dmg'
  name '欧路词典'
  homepage 'http://www.eudic.net/eudic/mac_dictionary.aspx'
  license :closed    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'EuDic.app'
end
