cask 'darktable' do
  version '2.4.1'
  sha256 '75077f17332a6fda144125ab0f1d3dd219c214bf7602b0b252208f1ec665d031'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.before_comma}/darktable-#{version.before_comma}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom',
          checkpoint: '45ecafcfd9d2cacf2515fe69ba28e469085e2c6c9d536add38e45dae9dfeeaf1'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  depends_on macos: '>= :lion'

  app 'darktable.app'
end
