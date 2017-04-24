cask 'darktable' do
  version '2.2.4,6'
  sha256 'b7e4aeaa4b275083fa98b2a20e77ceb3ee48af3f7cc48a89f41a035d699bd71c'

  # github.com/darktable-org/darktable was verified as official when first introduced to the cask
  url "https://github.com/darktable-org/darktable/releases/download/release-#{version.before_comma}/darktable-#{version.before_comma}.#{version.after_comma}.dmg"
  appcast 'https://github.com/darktable-org/darktable/releases.atom',
          checkpoint: '4ba336b2c36e3458b8f3abc8e7d44a18c229272dd3e47023a05f892571fcc48d'
  name 'darktable'
  homepage 'https://www.darktable.org/'

  depends_on macos: '>= :lion'

  app 'darktable.app'
end
