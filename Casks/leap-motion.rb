cask :v1 => 'leap-motion' do
  version '2.2.3'
  sha256 '1c369abb37bbf264b94819e78c4f3b050e80c3e79a542bd9b2d9974f7b112cf3'

  url 'https://warehouse.leapmotion.com/apps/3994/download'
  homepage 'https://www.leapmotion.com/setup'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Leap Motion.pkg'

  uninstall :script => '/Applications/Leap Motion.app/Contents/MacOS/uninstall'
end
