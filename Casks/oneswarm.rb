cask 'oneswarm' do
  version :latest
  sha256 :no_check

  url 'http://www.oneswarm.org/builds/OneSwarm.dmg'
  name 'OneSwarm'
  homepage 'http://www.oneswarm.org/'

  app 'OneSwarm.app'
end
