cask :v1 => 'pomotodo' do
  version :latest
  sha256 :no_check

  url 'http://pomotodo.avosapps.com/mac-latest.dmg'
  homepage 'https://pomotodo.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Pomotodo.app'
end
