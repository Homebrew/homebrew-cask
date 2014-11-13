cask :v1 => 'ezeep' do
  version :latest
  sha256 :no_check

  url 'https://packages.ezeep.com/osx/ezeep-latest.dmg'
  homepage 'http://www.ezeep.com/'
  license :unknown

  app 'ezeep.app'
end
