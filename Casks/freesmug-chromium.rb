cask 'freesmug-chromium' do
  version '52.0.2743.116'
  sha256 '2bead2665624e6cdff506263abdc8f735f40236f49d1a42d25ee3b121cd1d86f'

  # sourceforge.net/osxportableapps was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/osxportableapps/Chromium_OSX_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/osxportableapps/rss?path=/Chromium',
          checkpoint: '23d6d3cbe355b8104427ba1ded90061991b66e1d9e492eac333a2337d1b435e0'
  name 'Chromium'
  homepage 'http://www.freesmug.org/chromium'
  license :gpl

  app 'Chromium.app'
end
