cask :v1 => 'coolterm' do
  version :latest
  sha256 :no_check

  url 'http://freeware.the-meiers.org/CoolTermMac.zip'
  homepage 'http://freeware.the-meiers.org/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CoolTermMac/CoolTerm.app'
end
