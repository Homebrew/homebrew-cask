cask :v1 => 'leap-motion' do
  version '2.2.5'
  sha256 '731fa6b224486d313b029e45b657ba0f32e932d5140100898ecf4e3ac0841ebf'

  url 'https://warehouse.leapmotion.com/apps/4058/download'
  name 'Leap Motion'
  homepage 'https://www.leapmotion.com/setup'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Leap Motion.pkg'

  uninstall :script => '/Applications/Leap Motion.app/Contents/MacOS/uninstall'
end
