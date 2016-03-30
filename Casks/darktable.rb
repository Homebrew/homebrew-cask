cask 'darktable' do
  version '2.0.3'
  sha256 '0568d2d2551cfd2b8a55e8ff111857588f9fb986236bc11bff869ecec68ddebd'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom',
          checkpoint: '2ec06168570781f145c9e01572182b0948f58e8a4ea00a9d4644f1520753681d'
  name 'darktable'
  homepage 'https://www.darktable.org/'
  license :gpl

  app 'darktable.app'
end
