cask 'mega' do
  version '6.06'
  sha256 '7344b76a34719520f11f36f19cea1b3e93cb6d257fdf637616111da8321e903b'

  url "http://update.megasoftware.net/MEGA#{version}_setup.dmg"
  name 'MEGA'
  homepage 'http://megasoftware.net/'
  license :gratis

  depends_on macos: '>= :snow_leopard'
  depends_on arch: :intel

  app "MEGA#{version}-mac.app"
end
