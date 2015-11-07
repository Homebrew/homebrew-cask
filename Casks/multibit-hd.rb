cask :v1 => 'multibit-hd' do
  version '0.1.4'
  sha256 '61ea33f104a5c44a3a83fb99f71a6ef4367ce3bbd1b5c41e7635d4c9035857ee'

  url "https://multibit.org/releases/multibit-hd/multibit-hd-#{version}/multibit-hd-macos-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '23f7fb7b'
  name 'MultiBit'
  homepage 'https://multibit.org/'
  license :mit

  installer :manual => 'MultiBit HD Installer.app'
end
