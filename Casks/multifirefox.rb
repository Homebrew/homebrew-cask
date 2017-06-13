cask 'multifirefox' do
  version '2.4.0'
  sha256 '7b0cac19469d6a222b4254c0c6ef27cafe847ce89e1efb398d3637f1425645dc'

  # amazonaws.com/mff_sparkle was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/mff_sparkle/MultiFirefox_#{version}.zip"
  appcast 'https://s3.amazonaws.com/mff_sparkle/MultiFirefoxAppcast2.xml',
          checkpoint: 'fc4c1e122aa26f0f081158d044aa9dc51e70655b265682902e925f7c11782090'
  name 'MultiFirefox'
  homepage 'http://davemartorana.com/multifirefox/'

  app 'MultiFirefox.app'
end
