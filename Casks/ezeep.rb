cask 'ezeep' do
  version :latest
  sha256 :no_check

  url 'https://packages.ezeep.com/osx/ezeep-latest.dmg'
  name 'ezeep'
  homepage 'https://www.ezeep.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'ezeep.app'
end
