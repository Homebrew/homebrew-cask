cask 'leap-motion' do
  version '2.2.6'
  sha256 '3fe11385d960823d888f1946705a2d7c91d693618a0df371d9724794cb081ddf'

  url 'https://warehouse.leapmotion.com/apps/4101/download'
  name 'Leap Motion'
  homepage 'https://www.leapmotion.com/setup'
  license :gratis

  pkg 'Leap Motion.pkg'

  uninstall script: '/Applications/Leap Motion.app/Contents/MacOS/uninstall'
end
