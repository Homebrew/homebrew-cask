cask 'macterm' do
  version :latest
  sha256 :no_check

  url 'http://www.macterm.net/updates/macterm-latest.dmg'
  name 'MacTerm'
  homepage 'http://www.macterm.net/'
  license :gpl

  app 'MacTerm.app'
end
