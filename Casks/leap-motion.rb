class LeapMotion < Cask
  version '1.2.1'
  sha256 '70507658b029398f5839603ed0e5998db690608f17dc6d55386f12a41a70edee'

  url 'https://warehouse.leapmotion.com/apps/3382/download'
  homepage 'https://www.leapmotion.com/setup'

  pkg 'Leap Motion.pkg'
  uninstall :script => '/Applications/Leap Motion.app/Contents/MacOS/uninstall'
end
