cask :v1 => 'leap-motion' do
  version '2.2.4'
  sha256 'd8843b3b26d1b4fd8c7edfb3450851fc3626b74d34a2ff4dfd18606d5d868b74'

  url 'https://warehouse.leapmotion.com/apps/4029/download'
  homepage 'https://www.leapmotion.com/setup'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Leap Motion.pkg'

  uninstall :script => '/Applications/Leap Motion.app/Contents/MacOS/uninstall'
end
