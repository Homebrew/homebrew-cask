class LeapMotion < Cask
  url 'https://warehouse.leapmotion.com/apps/2818/download'
  homepage 'https://www.leapmotion.com/setup'
  version 'latest'
  no_checksum
  install 'Leap Motion.pkg'
  uninstall :script => '/Applications/Leap Motion.app/Contents/MacOS/uninstall'
end
