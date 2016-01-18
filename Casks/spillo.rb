cask 'spillo' do
  version '1.6.5'
  sha256 'd5f27da638de4458edfd0f45e1d8c4abe0a1c2d58420bd5d7af958a0388e203d'

  url "http://bananafishsoftware.com/software/spillo/app/spillo-#{version}.zip"
  appcast 'http://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: 'ff1bcfcb8ff7c547b95a44074fd395899b4eb525d3edf3a86b9e566bf37ea6f7'
  name 'Spillo'
  homepage 'http://bananafishsoftware.com/products/spillo/'
  license :commercial

  app 'Spillo.app'
end
