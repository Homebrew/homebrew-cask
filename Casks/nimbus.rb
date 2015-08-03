cask v1: 'nimbus' do
  version '0.7.4'
  sha256 '833f747d74fae3f670f145fa7458623779a1b18b482f3c5828aea13581f64033'

  url "https://github.com/jnordberg/irccloudapp/releases/download/#{version}/Nimbus-#{version}.zip"
  appcast 'https://github.com/jnordberg/irccloudapp/releases.atom'
  name 'Nimbus'
  homepage 'https://github.com/jnordberg/irccloudapp'
  license :mit

  app 'Nimbus.app'
end
