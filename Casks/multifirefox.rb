cask 'multifirefox' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://mff.s3.amazonaws.com/MFF2_latest.dmg'
  appcast 'https://s3.amazonaws.com/mff_sparkle/MultiFirefoxAppcast2.xml',
          :sha256 => 'adf4ecc69fb5ee5e81512db866e5955a0879eaa1924318c66c008132a7220ba8'
  name 'MultiFirefox'
  homepage 'http://davemartorana.com/multifirefox'
  license :mit

  app 'MultiFirefox.app'
end
