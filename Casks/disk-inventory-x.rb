cask 'disk-inventory-x' do
  version '1.2'
  sha256 '05ce4ffcb012545601fd87fef5aa1719f47f2fffbbd3ee7d314ec0bf4a0bdda5'

  url "http://www.derlien.com/diskinventoryx/downloads/Disk%20Inventory%20X%20#{version}.dmg",
      user_agent: :fake
  appcast 'http://www.derlien.com/downloads/index.html'
  name 'Disk Inventory X'
  homepage 'http://www.derlien.com/'

  depends_on macos: '>= :high_sierra'

  app 'Disk Inventory X.app'
end
