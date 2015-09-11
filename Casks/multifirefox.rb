cask :v1 => 'multifirefox' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://mff.s3.amazonaws.com/MFF2_latest.dmg'
  appcast 'https://s3.amazonaws.com/mff_sparkle/MultiFirefoxAppcast2.xml'
  name 'MultiFirefox'
  homepage 'http://davemartorana.com/multifirefox'
  license :mit

  app 'MultiFirefox.app'
end
