cask :v1 => 'macterm' do
  version :latest
  sha256 :no_check

  url 'http://www.macterm.net/updates/macterm-latest.dmg'
  homepage 'http://www.macterm.net/'
  license :unknown    # todo: improve this machine-generated value

  app 'MacTerm.app'
end
