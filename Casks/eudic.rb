cask :v1 => 'eudic' do
  version :latest
  sha256 :no_check

  # frdic.com is the official download host per the vendor homepage
  url 'http://static.frdic.com/pkg/eudicmac.dmg'
  name '欧路词典'
  name 'EuDic'
  homepage 'http://www.eudic.net/eudic/mac_dictionary.aspx'
  license :closed

  app 'EuDic.app'
end
