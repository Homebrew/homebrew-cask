cask 'minitube' do
  version :latest
  sha256 :no_check

  url 'http://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'http://flavio.tordini.org/minitube-ws/appcast.xml',
          :sha256 => '71fff60efb8627259ade65a3c7effda61b967e63ce1fe5e0fcbf79c2c6323601'
  name 'Minitube'
  homepage 'http://flavio.tordini.org/minitube'
  license :gpl

  app 'Minitube.app'
end
