cask :v1 => 'epic' do
  version :latest
  sha256 :no_check

  url 'https://ed5b681d56298a85550d-7d665255a6e48f36b11ee3cfeece77e0.ssl.cf1.rackcdn.com/epic_mac_33_alternate/Epic.dmg'
  appcast 'https://updates.epicbrowser.com/mac_updates/appcast.xml'
  homepage 'http://www.epicbrowser.com'
  license :unknown

  app 'Epic.app'
end
