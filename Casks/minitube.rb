cask 'minitube' do
  version '3.1'
  sha256 '596d15a07534b0ea392211c1c154239f3b85caf5fff9cecfcfa303fd43fcdd64'

  url 'https://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'https://flavio.tordini.org/minitube-ws/appcast.xml'
  name 'Minitube'
  homepage 'https://flavio.tordini.org/minitube'

  depends_on macos: '>= :sierra'

  app 'Minitube.app'
end
