cask :v1 => 'leap-motion' do
  version '2.2.1'
  sha256 'eba23267927e4032f51f8633cf4a4b0d47b923099f633a11438c9e0fd4f20f86'

  url 'https://warehouse.leapmotion.com/apps/3833/download'
  homepage 'https://www.leapmotion.com/setup'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Leap Motion.pkg'

  uninstall :script => '/Applications/Leap Motion.app/Contents/MacOS/uninstall'
end
