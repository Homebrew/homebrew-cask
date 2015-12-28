cask 'oneswarm' do
  version :latest
  sha256 :no_check

  url 'http://www.oneswarm.org/builds/OneSwarm.dmg'
  name 'OneSwarm'
  homepage 'http://www.oneswarm.org/'
  license :gpl

  app 'OneSwarm.app'
end
