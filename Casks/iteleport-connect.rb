cask 'iteleport-connect' do
  version '6.0.0.2'
  sha256 '2a845a052dfa04ae8a5c26da918944082f4a3a43ba3804cb8a078a77ad9f3b4c'

  url "https://www.iteleportmobile.com/download/iTeleport%20Installer.v#{version}.dmg"
  appcast 'https://www.iteleportmobile.com/connect'
  name 'iTeleport Connect'
  homepage 'http://www.iteleportmobile.com/connect'

  auto_updates true

  app 'iTeleport Connect.app'
end
