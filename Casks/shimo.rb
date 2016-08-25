cask 'shimo' do
  version '4.1.2_8433'
  sha256 'e41e9c5d9cf4eaf1260312cc277f627f0466c362e440e8345001835f531c30a9'

  # shimo.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://shimo.s3.amazonaws.com/Shimo_#{version}.zip"
  name 'Shimo'
  homepage 'https://www.feingeist.io/shimo/'
  license :commercial

  auto_updates true

  app 'Shimo.app'
end
