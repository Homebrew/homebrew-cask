cask :v1 => 'identify' do
  version '545'
  sha256 'e850d12335befe8c092b8758f0ca1b26cb7f0c1decda98e5ef0525b3a37fb2d2'

  url "http://identify2.arrmihardies.com/appCast/iDentifyLite#{version}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/1495067/iDentifySparkle/iDentifyAppcast.xml',
          :sha256 => 'db8eb3671673ae557911e5678b70738b07672dd30e93eec806532448ce22c28e'
  name 'iDentify'
  homepage 'http://identify2.arrmihardies.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'iDentify.app'
end
