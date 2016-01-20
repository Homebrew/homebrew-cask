cask 'multibit' do
  version '0.5.19'
  sha256 'f84aefa0b3762e36659ea3e71806f747db4198641d658d88c8772978b23f99dc'

  url "https://multibit.org/releases/multibit-classic/multibit-classic-#{version}/multibit-classic-macos-#{version}.dmg"
  name 'MultiBit'
  homepage 'https://multibit.org/'
  license :mit
  gpg "#{url}.asc",
      key_id: '23f7fb7b'

  app 'MultiBit.app'
end
