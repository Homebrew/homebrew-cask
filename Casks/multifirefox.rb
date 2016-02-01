cask 'multifirefox' do
  version '2.1.001'
  sha256 '052148d029d5c4f0e9bc25ea56f1826f5491b36c18f595bd8639542c5a5eebbd'

  # amazonaws.com/mff_sparkle was verified as official when first introduced to the cask
  url "http://s3.amazonaws.com/mff_sparkle/MultiFirefox_#{version}.zip"
  appcast 'https://s3.amazonaws.com/mff_sparkle/MultiFirefoxAppcast2.xml',
          checkpoint: 'fc4c1e122aa26f0f081158d044aa9dc51e70655b265682902e925f7c11782090'
  name 'MultiFirefox'
  homepage 'http://davemartorana.com/multifirefox'
  license :mit

  app 'MultiFirefox.app'
end
