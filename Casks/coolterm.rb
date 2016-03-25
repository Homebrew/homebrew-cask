cask 'coolterm' do
  version :latest
  sha256 :no_check

  url 'http://freeware.the-meiers.org/CoolTerm_Mac.zip'
  name 'CoolTerm'
  homepage 'http://freeware.the-meiers.org/'
  license :gratis

  app 'CoolTermMac/CoolTerm.app'
end
