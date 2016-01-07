cask 'identify' do
  version '551'
  sha256 'b3691e56912882deb9d8021afa30643cc3e7dd9e4758d550a83649f491b9285a'

  # dropbox.com is the official download host per the appcast feed
  url "http://dl.dropbox.com/u/1495067/iDentifySparkle/iDentifyLite#{version}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/1495067/iDentifySparkle/iDentifyAppcast.xml',
          :sha256 => 'db8eb3671673ae557911e5678b70738b07672dd30e93eec806532448ce22c28e'
  name 'iDentify'
  homepage 'http://identify2.arrmihardies.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iDentify.app'
end
