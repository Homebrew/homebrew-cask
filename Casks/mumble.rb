cask :v1 => 'mumble' do
  version '1.2.10'
  sha256 'f88f56e049b3375544f57777da20ca8461d4b631e4ef0de26fbfc5b789601504'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mumble-voip/mumble/releases/download/#{version}/Mumble-#{version}.dmg"
  appcast 'https://github.com/mumble-voip/mumble/releases.atom'
  gpg "#{url}.sig",
      :key_url => 'http://mumble.info/gpg/mumble-auto-build-2015.asc'
  name 'Mumble'
  homepage 'http://www.mumble.info'
  license :bsd

  app 'Mumble.app'
end
