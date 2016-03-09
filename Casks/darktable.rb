cask 'darktable' do
  version '2.0.1'
  sha256 '580d1feb356e05d206eb74d7c134f0ffca4202943388147385c5b8466fc1eada'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom',
          checkpoint: '2e8a1bcf85f0aeb99f456964160657ad8f24f9ad57ef324c9a651b840c231543'
  name 'darktable'
  homepage 'https://www.darktable.org/'
  license :gpl

  app 'darktable.app'
end
