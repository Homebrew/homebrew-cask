cask 'sparkle' do
  version '1.16.0'
  sha256 '8a928afa342062f433ab9e86fac02bca52ae3ce8352ed0ad2e803a76c19b2d87'

  # github.com/sparkle-project/Sparkle was verified as official when first introduced to the cask
  url "https://github.com/sparkle-project/Sparkle/releases/download/#{version}/Sparkle-#{version}.tar.bz2"
  appcast 'https://github.com/sparkle-project/Sparkle/releases.atom',
          checkpoint: '86802bf57ac0147277a048ae9b0a96146f36d7fb284b5ba2d3e0b1fe822bedda'
  name 'Sparkle'
  homepage 'https://sparkle-project.org/'

  app 'Sparkle Test App.app'
end
