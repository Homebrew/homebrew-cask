cask 'dbeaver-enterprise' do
  version '3.7.6'
  sha256 '2077b2d487fbe5cf8fab1866097d37e4fe125e2d312c10050aed23fc09777c61'

  url "http://dbeaver.jkiss.org/files/#{version}/dbeaver-ee-#{version}-macos.dmg"
  name 'DBeaver Enterprise Edition'
  homepage 'http://dbeaver.jkiss.org/'

  app 'Dbeaver.app'
end
