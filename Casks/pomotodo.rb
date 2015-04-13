cask :v1 => 'pomotodo' do
  version :latest
  sha256 :no_check

  # hackplan.com is the official download host per the vendor homepage
  url 'http://cdn.hackplan.com/theair/1419250299/Pomotodo.dmg'
  homepage 'https://pomotodo.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Pomotodo.app'
end
