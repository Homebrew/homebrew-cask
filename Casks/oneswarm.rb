cask 'oneswarm' do
  version :latest
  sha256 :no_check

  url 'https://www.oneswarm.org/builds/OneSwarm.dmg'
  name 'OneSwarm'
  homepage 'https://www.oneswarm.org/'

  app 'OneSwarm.app'
end
