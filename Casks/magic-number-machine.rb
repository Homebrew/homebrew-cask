cask 'magic-number-machine' do
  version '1.0.30'
  sha256 'a9150fb1901b2ab77afd0e19108f1584a1f18e8592d52f32371bff5f60b275a7'

  # magicnumbermachine.googlecode.com was verified as official when first introduced to the cask
  url 'http://magicnumbermachine.googlecode.com/files/magicnumbermachine_1.0.30.dmg'
  name 'Magic Number Machine'
  homepage 'http://projectswithlove.com/magicnumbermachine/'
  license :other

  app 'Magic Number Machine.app'
end
