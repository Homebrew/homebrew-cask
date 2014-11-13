cask :v1 => 'coolterm' do
  version :latest
  sha256 :no_check

  url 'http://freeware.the-meiers.org/CoolTermMac.zip'
  homepage 'http://freeware.the-meiers.org/'
  license :unknown

  app 'CoolTermMac/CoolTerm.app'
end
