cask 'macspice' do
  version '3.1.12'
  sha256 '62ef8643166cf334036a2b601d5e64fec1d3d2e3318fc5868ed7205745cf3072'

  url "http://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'http://www.macspice.com/AppCast-v2.xml',
          checkpoint: 'b080cf2b0f2136bceae0fe7b51e98f1db39748002f0169eaa10061f80ecbf9a5'
  name 'MacSpice'
  homepage 'http://www.macspice.com/'

  app 'MacSpice.app'
end
