cask 'darktable' do
  version '2.0.4'
  sha256 '1e6306f623c3743fabe88312d34376feae94480eb5a38858f21751da04ac4550'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom',
          checkpoint: '7983f9d630d521bc530069d06be63b971685d9ed81b181d70bba95c788cdd978'
  name 'darktable'
  homepage 'https://www.darktable.org/'
  license :gpl

  app 'darktable.app'
end
