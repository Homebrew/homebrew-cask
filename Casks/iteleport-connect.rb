cask 'iteleport-connect' do
  version '6.0.0.2'
  sha256 '2a845a052dfa04ae8a5c26da918944082f4a3a43ba3804cb8a078a77ad9f3b4c'

  url "http://www.iteleportmobile.com/download/iTeleport%20Installer.v#{version}.dmg"
  appcast 'http://www.iteleportmobile.com/connect/mac/new',
          checkpoint: 'e7df5301267b725512751f09ecd0a260586044e2b1330b4ac7ea3a8c8d5257ff'
  name 'iTeleport Connect'
  homepage 'http://www.iteleportmobile.com/connect'
  license :gratis

  auto_updates true
  depends_on macos: '>= :snow_leopard'

  app 'iTeleport Connect.app'
end
