cask :v1 => 'oneswarm' do
  version :latest
  sha256 :no_check

  url 'http://www.oneswarm.org/builds/OneSwarm.dmg'
  homepage 'http://www.oneswarm.org/'
  license :unknown    # todo: improve this machine-generated value

  app 'OneSwarm.app'
end
