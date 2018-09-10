cask 'coolterm' do
  version :latest
  sha256 :no_check

  url 'https://freeware.the-meiers.org/CoolTermMac.zip'
  name 'CoolTerm'
  homepage 'https://freeware.the-meiers.org/'

  container nested: 'CoolTermMac.dmg'

  app 'CoolTerm.app'
end
