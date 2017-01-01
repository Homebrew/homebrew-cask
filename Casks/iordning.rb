cask 'iordning' do
  version '6.0.61'
  sha256 'a8610e2a14148a57c129ba73bd7a1a26bad348f2fdb117612a273328386ca0a5'

  url "https://www.aderstedtsoftware.com/downloads/iOrdning#{version.major}.zip"
  appcast "https://www.aderstedtsoftware.com/economacs/v#{version.major}_appcast.xml",
          checkpoint: '70e3ff5eef7e58d4b00eccf501a4e2a02a6be60502af808c81b239285eaa7951'
  name 'iOrdning'
  name 'Economacs'
  homepage 'https://www.aderstedtsoftware.com/iordning/'

  app 'iOrdning.app'
end
