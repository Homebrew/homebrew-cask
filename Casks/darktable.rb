cask 'darktable' do
  version '2.2.2'
  sha256 '52fd0e9a8bb74c82abdc9a88d4c369ef181ef7fe2b946723c5706d7278ff2dfb'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom',
          checkpoint: 'e8e9043d0e98339af2ed3e8a64a7c8b573c5b3979a3d8362b9cebda72dff1943'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  depends_on macos: '>= :lion'

  app 'darktable.app'
end
