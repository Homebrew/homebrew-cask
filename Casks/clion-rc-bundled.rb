cask :v1 => 'clion-rc-bundled' do
  version '141.352.13'
  sha256 '811ba67ec135d36bfd3edfc65f8bb5c3b59ebd3d3ef96c77ec97c87ba6474e14'

  url "http://download.jetbrains.com/cpp/CLion-#{version}-custom-jdk-bundled.dmg"
  name 'CLion RC'
  name 'CLion'
  homepage 'http://www.jetbrains.com/clion'
  license :commercial

  app 'CLion.app'

  depends_on :macos => :yosemite
  conflicts_with :cask => 'clion-rc'
end
