cask 'multifirefox' do
  version '2.3.3'
  sha256 'da08ec6b31a928549783aefcd54664fcf26e107bf09bb1d5439e769a2273b537'

  # amazonaws.com/mff_sparkle was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/mff_sparkle/MultiFirefox_#{version}.zip"
  appcast 'https://s3.amazonaws.com/mff_sparkle/MultiFirefoxAppcast2.xml',
          checkpoint: 'fc4c1e122aa26f0f081158d044aa9dc51e70655b265682902e925f7c11782090'
  name 'MultiFirefox'
  homepage 'http://davemartorana.com/multifirefox/'

  app 'MultiFirefox.app'
end
