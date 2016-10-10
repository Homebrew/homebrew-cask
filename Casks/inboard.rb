cask 'inboard' do
  version '1.0.9-288'
  sha256 '02d9ec80b5aeaa57f1775823e53ed4d55007369ab2d487ae9d840c0f0089fa73'

  url "http://inboardapp.com/trial/Inboard-#{version}.zip"
  appcast 'http://inboardapp.com/appcast.xml',
          checkpoint: '2af763dba5809aa09932b379c652d04a372b1ededb7b8203db2bb65dc8115dd3'
  name 'Inboard'
  homepage 'http://inboardapp.com'

  app 'Inboard.app'
end
