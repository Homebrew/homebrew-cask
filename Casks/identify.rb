cask :v1 => 'identify' do
  version '545'
  sha256 'e850d12335befe8c092b8758f0ca1b26cb7f0c1decda98e5ef0525b3a37fb2d2'

  url "http://identify2.arrmihardies.com/appCast/iDentifyLite#{version}.zip"
  appcast 'http://dl.dropbox.com/u/1495067/iDentifySparkle/iDentifyAppcast.xml',
          :sha256 => 'f4136921951cb3bd6a0488d819a6283957adc94d7afcda7477d1bf618d307e85'
  homepage 'http://identify2.arrmihardies.com/'
  license :unknown

  app 'iDentify.app'
end
