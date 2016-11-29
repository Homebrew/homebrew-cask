cask 'rcenvironment' do
  version '1.4'
  sha256 '8c2db3e0e2493393cad70ba55157ce5b4aed2d718dff792a7249b118a8f51456'

  url "http://www.rubicode.com/Downloads/RCEnvironment-#{version}.X.dmg"
  name 'RCEnvironment'
  homepage 'http://www.rubicode.com/Software/RCEnvironment/'

  prefpane 'RCEnvironment.prefPane'
end
