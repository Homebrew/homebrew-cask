cask 'shimo' do
  version '4.1.3_8800'
  sha256 '21c975fd452b84685d665be24a41e7e2339f4c415c02119c37feb7d88c627e49'

  # shimo.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://shimo.s3.amazonaws.com/Shimo_#{version}.zip"
  name 'Shimo'
  homepage 'https://www.feingeist.io/shimo/'
  license :commercial

  auto_updates true

  app 'Shimo.app'
end
