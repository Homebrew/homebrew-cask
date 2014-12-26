cask :v1 => 'ezeep' do
  version :latest
  sha256 :no_check

  url 'https://packages.ezeep.com/osx/ezeep-latest.dmg'
  homepage 'http://www.ezeep.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ezeep.app'
end
