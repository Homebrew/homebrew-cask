class Multifirefox < Cask
  version 'latest'
  sha256 :no_check
  
  url 'https://mff.s3.amazonaws.com/MFF2_latest.dmg'
  appcast 'https://s3.amazonaws.com/mff_sparkle/MultiFirefoxAppcast2.xml'
  homepage 'http://davemartorana.com/multifirefox'

  link 'MultiFirefox.app'
end
