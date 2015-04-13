cask :v1 => 'oneswarm' do
  version :latest
  sha256 :no_check

  url 'http://www.oneswarm.org/builds/OneSwarm.dmg'
  name 'OneSwarm'
  homepage 'http://www.oneswarm.org/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'OneSwarm.app'
end
