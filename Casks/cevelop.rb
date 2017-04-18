cask 'cevelop' do
  version '1.7.0-201704121451'
  sha256 '80cf1c8b2a922e62fbdd23f7bc231feebc869b237ffc39764b1f74c04c622876'

  url "https://www.cevelop.com/cevelop/downloads/cevelop-#{version}-macosx.cocoa.x86_64.tar.gz"
  appcast 'https://www.cevelop.com/download/',
          checkpoint: '8906632c2c715dce25d629c7b82321201e66614ba5631f3fbd7b1f5ac3e61686'
  name 'Cevelop'
  homepage 'https://www.cevelop.com/'

  app 'Cevelop.app'
end
