cask 'minitube' do
  version '2.5.2'
  sha256 'ad44f8bd63876844c9cb6a8f6fcd50ab594bccabd246af920822312299c4dce8'

  url 'http://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'http://flavio.tordini.org/minitube-ws/appcast.xml',
          checkpoint: '71fff60efb8627259ade65a3c7effda61b967e63ce1fe5e0fcbf79c2c6323601'
  name 'Minitube'
  homepage 'http://flavio.tordini.org/minitube'
  license :gpl

  app 'Minitube.app'
end
