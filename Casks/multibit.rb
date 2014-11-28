cask :v1 => 'multibit' do
  version '0.5.18'
  sha256 '0d2fe6fa68385c1ca964d9588272787dabffbc2061f29ebaab422317d0972257'

  url "https://multibit.org/releases/multibit-#{version}/multibit-#{version}.dmg"
  gpg "#{url}.asc",
      :key_id => '23f7fb7b'
  homepage 'https://multibit.org/'
  license :unknown

  app 'MultiBit.app'
end
