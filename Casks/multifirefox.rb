cask 'multifirefox' do
  version '2.4.0'
  sha256 '7b0cac19469d6a222b4254c0c6ef27cafe847ce89e1efb398d3637f1425645dc'

  # amazonaws.com/mff_sparkle was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/mff_sparkle/MultiFirefox_#{version}.zip"
  appcast 'https://s3.amazonaws.com/mff_sparkle/MultiFirefoxAppcast2.xml'
  name 'MultiFirefox'
  homepage 'https://davemartorana.com/multifirefox/'

  app 'MultiFirefox.app'
end
