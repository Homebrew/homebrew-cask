cask 'multifirefox' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://mff.s3.amazonaws.com/MFF2_latest.dmg'
  appcast 'https://s3.amazonaws.com/mff_sparkle/MultiFirefoxAppcast2.xml',
          :checkpoint => 'fc4c1e122aa26f0f081158d044aa9dc51e70655b265682902e925f7c11782090'
  name 'MultiFirefox'
  homepage 'http://davemartorana.com/multifirefox'
  license :mit

  app 'MultiFirefox.app'
end
