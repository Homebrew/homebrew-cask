cask 'darktable' do
  version '2.2.1'
  sha256 '9a86ed2cff453dfc0c979e802d5e467bc4974417ca462d6cbea1c3aa693b08de'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version}/darktable-#{version}.3.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom',
          checkpoint: '4f4d994ceb2d87d3b0c57e14beab7e69b10e938623b2e6d83b66e38ebb24727a'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  depends_on macos: '>= :lion'

  app 'darktable.app'
end
