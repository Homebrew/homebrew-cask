cask 'darktable' do
  version '2.0.2'
  sha256 '33789b5a791770f9308cc653aaf50b0e9c054a0fbdd5e4a1d2e48e2bf6553f95'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom',
          checkpoint: 'b34f3cd0eb6a273b1e0353a0f9e9332b42b06e36014083088048cdfefa5a631e'
  name 'darktable'
  homepage 'https://www.darktable.org/'
  license :gpl

  app 'darktable.app'
end
