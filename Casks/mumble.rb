cask :v1 => 'mumble' do
  version '1.2.9'
  sha256 'd0c630a4fb65be50407080e2f97a47cd3aeeb67ddc52e9e02dd454421404e449'

  url "http://downloads.sourceforge.net/sourceforge/mumble/Mumble-#{version}.dmg"
  gpg "#{url}.sig",
      :key_url => 'http://mumble.info/gpg/mumble-auto-build-2014.asc'
  name 'Mumble'
  homepage 'http://mumble.sourceforge.net'
  license :bsd

  app 'Mumble.app'
end
