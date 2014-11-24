cask :v1 => 'epic' do
  version '37_4'
  sha256 'b3dcd0d0e101629342d13c8683f3801412517274c75a70645d38813c07030a48'

  # rackcdn.com is the official download host per the vendor homepage
  url "https://ed5b681d56298a85550d-7d665255a6e48f36b11ee3cfeece77e0.ssl.cf1.rackcdn.com/epic_mac_#{version}_alternative/Epic.dmg"
  appcast 'https://updates.epicbrowser.com/mac_updates/appcast.xml'
  homepage 'http://www.epicbrowser.com'
  license :unknown

  app 'Epic.app'
end
