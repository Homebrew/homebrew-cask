cask 'hiddenbar' do
  version '1.3'
  sha256 '18cc733332a7d00c8f6c918f6081a89ac5b38e230baafe7104d356d4c7853155'

  url "https://github.com/dwarvesf/hidden/releases/download/v#{version}/Hidden.Bar.#{version}.dmg"
  appcast 'https://github.com/dwarvesf/hidden/releases.atom'
  name 'Hidden Bar'
  homepage 'https://github.com/dwarvesf/hidden/'

  depends_on macos: '>= :high_sierra'

  app 'Hidden Bar.app'
end
