cask 'flock' do
  version '2.2.230'
  sha256 '339f500c1f376e8283c2b363184b6d63b0cc3166aa22c3327b375a35e4fb93ee'

  url "https://updates.flock.co/fl_mac_electron/Flock-macOS-#{version}.dmg"
  name 'Flock'
  homepage 'https://flock.co/'

  app 'Flock.app'
end
