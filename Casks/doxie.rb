cask 'doxie' do
  version '2.9.1'
  sha256 '096d29dda008addb8fe5ba8e3b2c61f5ee392f9dadc1531cf7385b1d58dfc96b'

  # cdn.getdoxie.com was verified as official when first introduced to the cask
  url "http://cdn.getdoxie.com/resources/files/Doxie_#{version.dots_to_underscores}.dmg"
  name 'Doxie'
  homepage 'http://www.getdoxie.com/'

  auto_updates true

  app 'Doxie.app'
end
