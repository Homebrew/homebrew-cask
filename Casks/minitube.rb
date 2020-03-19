cask 'minitube' do
  version '3.3.1'
  sha256 'b41c40cdd8b3c091402cdb017e39a4ddd34df6be1ff7a217a5eb74c047310acc'

  url 'https://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'https://flavio.tordini.org/minitube-ws/appcast.xml'
  name 'Minitube'
  homepage 'https://flavio.tordini.org/minitube'

  depends_on macos: '>= :sierra'

  app 'Minitube.app'
end
