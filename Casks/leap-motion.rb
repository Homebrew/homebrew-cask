class LeapMotion < Cask
  version '1.2.0'
  sha256 '5a9b38764367d91e3a5ebf5bfabc960051605a8532b271a98c95dc5341cbb99d'

  url 'https://warehouse.leapmotion.com/apps/3250/download'
  homepage 'https://www.leapmotion.com/setup'

  install 'Leap Motion.pkg'
  uninstall :script => '/Applications/Leap Motion.app/Contents/MacOS/uninstall'
end
