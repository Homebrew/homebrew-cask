cask 'g-desktop-suite' do
  version '0.2.1'
  sha256 '6220c88551ab2c19180d662387330ab31e44a45cb5dabad51bb86a0bf47904eb'

  url "https://github.com/alexkim205/G-Desktop-Suite/releases/latest/download/G.Desktop.Suite-#{version}.dmg"
  appcast 'https://github.com/alexkim205/G-Desktop-Suite/releases.atom'
  name 'G Desktop Suite'
  homepage 'https://github.com/alexkim205/G-Desktop-Suite'

  app 'G Desktop Suite.app'
end
