cask 'mumble' do
  version '1.2.16'
  sha256 'b7c31f5f5036665393c38d01b09bd107f2c0eccb013d46c80692530ee80fc546'

  # github.com/mumble-voip/mumble was verified as official when first introduced to the cask
  url "https://github.com/mumble-voip/mumble/releases/download/#{version}/Mumble-#{version}.dmg"
  appcast 'https://github.com/mumble-voip/mumble/releases.atom',
          checkpoint: 'a28725d6c33c456c81096d7c787eb90461e785d5213e11d98a010ff8625f9fd9'
  name 'Mumble'
  homepage 'http://www.mumble.info/'
  license :bsd
  gpg "#{url}.sig",
      key_url: 'http://mumble.info/gpg/mumble-auto-build-2015.asc'

  app 'Mumble.app'
end
