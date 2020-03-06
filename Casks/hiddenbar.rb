cask 'hiddenbar' do
  version '1.4'
  sha256 'ca616c04f6eef3d80e6d52911b2e65310efb0662dab7d9846fc0c8360c3bc31c'

  url "https://github.com/dwarvesf/hidden/releases/download/v#{version}/Hidden.Bar.#{version}.dmg"
  appcast 'https://github.com/dwarvesf/hidden/releases.atom'
  name 'Hidden Bar'
  homepage 'https://github.com/dwarvesf/hidden/'

  depends_on macos: '>= :high_sierra'

  app 'Hidden Bar.app'
end
