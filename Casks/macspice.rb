cask :v1 => 'macspice' do
  version '3.1.4'
  sha256 'f60c85ed0e08af71ae8a7f3a1f77ecd576c9320bc1eea1b6729b725c222945bf'

  url 'http://www.macspice.com/mirror/binaries/v3.1.4/MacSpice3f5.dmg'
  name 'MacSpice'
  homepage 'http://www.macspice.com/'
  license :closed

  app 'MacSpice.app'
end
