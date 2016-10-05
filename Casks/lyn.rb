cask 'lyn' do
  version '1.8'
  sha256 '77cce0a0aa26fd83766d421c846b5abb2cadbc965998ec2a253ea83d07e11d74'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          checkpoint: '8e3c01bedb65e7061ab8c84d1e72cc5f93f21cfea78c3e6e57285a9a5a48f0a6'
  name 'Lyn'
  homepage 'http://www.lynapp.com/'
  license :commercial

  app 'Lyn.app'
end
