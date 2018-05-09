cask 'multimc' do
  version '0.6.2'
  sha256 '77343add8323cda175457812c83f2702f32c4d2df8cc77d54406ed85bb04e3fc'

  url 'https://files.multimc.org/downloads/mmc-stable-osx64.tar.gz'
  appcast 'https://github.com/MultiMC/MultiMC5/releases.atom',
          checkpoint: '6eaee80ea5092a824485b91049aa8b003d7319e3e361d4635c4d123ca5679116'
  name 'Multi MC'
  homepage 'https://multimc.org/'

  app 'MultiMC/MultiMC.app'
end
