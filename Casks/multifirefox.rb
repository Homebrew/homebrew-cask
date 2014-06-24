class Multifirefox < Cask
  url 'https://mff.s3.amazonaws.com/MFF2_latest.dmg'
  appcast 'https://s3.amazonaws.com/mff_sparkle/MultiFirefoxAppcast2.xml'
  homepage 'http://davemartorana.com/multifirefox'
  version 'latest'
  sha256 :no_check
  link 'MultiFirefox.app'
end
