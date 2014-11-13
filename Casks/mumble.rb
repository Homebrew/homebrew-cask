cask :v1 => 'mumble' do
  version '1.2.8'
  sha256 '19ea209ed4a589ad0959f4c8b4af47f479efbf63d5efb0b170c3b31f98979e2f'

  url "https://downloads.sourceforge.net/sourceforge/mumble/Mumble-#{version}.dmg"
  gpg "#{url}.sig",
      :key_url => 'http://mumble.info/gpg/mumble-auto-build-2014.asc'
  homepage 'http://mumble.sourceforge.net'
  license :oss

  app 'Mumble.app'
end
