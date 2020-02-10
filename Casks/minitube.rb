cask 'minitube' do
  version '3.3'
  sha256 'f20082b2d00e0bed5e6be47c2c86fd7c32b0042672a6490f087d694ad92f744a'

  url 'https://flavio.tordini.org/files/minitube/minitube.dmg'
  appcast 'https://flavio.tordini.org/minitube-ws/appcast.xml'
  name 'Minitube'
  homepage 'https://flavio.tordini.org/minitube'

  depends_on macos: '>= :sierra'

  app 'Minitube.app'
end
