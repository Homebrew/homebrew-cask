cask :v1 => 'macspice' do
  version '3.1.4'
  sha256 'f60c85ed0e08af71ae8a7f3a1f77ecd576c9320bc1eea1b6729b725c222945bf'

  url "http://www.macspice.com/mirror/binaries/v#{version}/MacSpice3f5.dmg"
  appcast 'http://www.macspice.com/AppCast-v2.xml',
          :sha256 => 'f41a570ce6231e87a15cda4c24f561f496b3c12205ceef54814b99afb56e1b02'
  name 'MacSpice'
  homepage 'http://www.macspice.com/'
  license :closed

  app 'MacSpice.app'
end
