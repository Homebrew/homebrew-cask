cask 'macterm' do
  version :latest
  sha256 :no_check

  url 'http://www.macterm.net/updates/macterm-latest.dmg'
  name 'MacTerm'
  homepage 'https://www.macterm.net/'

  app 'MacTerm.app'
end
