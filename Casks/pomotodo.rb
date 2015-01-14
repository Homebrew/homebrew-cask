cask :v1 => 'pomotodo' do
  version :latest
  sha256 :no_check

  url 'http://pomotodo.avosapps.com/mac-latest.dmg'
  homepage 'https://pomotodo.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pomotodo.app'
end
