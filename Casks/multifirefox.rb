cask 'multifirefox' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://mff.s3.amazonaws.com/MFF2_latest.dmg'
  appcast 'https://s3.amazonaws.com/mff_sparkle/MultiFirefoxAppcast2.xml',
          :checkpoint => '33df7b0b7df0e738860e6ed36fac5cb6499b590c35c80ae0c94efd0a34e90717'
  name 'MultiFirefox'
  homepage 'http://davemartorana.com/multifirefox'
  license :mit

  app 'MultiFirefox.app'
end
