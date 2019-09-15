cask 'selflanguage-self-control' do
  version '2017.1'
  sha256 'd066ae8d8b3b8da79eaaa8743f2238370c36e3fd5e1236bd52b5c71beea8676d'

  url "http://files.selflanguage.org/releases/#{version}/Self-#{version}.dmg"
  appcast 'http://www.selflanguage.org/'
  name 'Self'
  homepage 'http://www.selflanguage.org/'

  app 'Self Control.app'
end
