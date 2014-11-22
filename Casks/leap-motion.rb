cask :v1 => 'leap-motion' do
  version '2.1.5'
  sha256 '472d1e535bf21ffd847ff5a872ac23bbb042c955a5e1a9351f52dc7fbb2b85b0'

  url 'https://warehouse.leapmotion.com/apps/3720/download'
  homepage 'https://www.leapmotion.com/setup'
  license :unknown

  pkg 'Leap Motion.pkg'

  uninstall :script => '/Applications/Leap Motion.app/Contents/MacOS/uninstall'
end
