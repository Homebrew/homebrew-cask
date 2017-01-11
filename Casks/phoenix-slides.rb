cask 'phoenix-slides' do
  version '1.4.2'
  sha256 'bde43c827972b8539198a0838e59e5d8f0fb3376a767eb04e467b584c832d239'

  # github.com/gobbledegook/creevey/releases/download was verified as official when first introduced to the cask
  url "https://github.com/gobbledegook/creevey/releases/download/v#{version}/phoenix-slides-#{version.no_dots}.dmg"
  appcast 'https://github.com/gobbledegook/creevey/releases.atom',
          checkpoint: '6965560912b64694cbd614f48d59b66b2511cffd46005301d4467edb87c5b3cd'
  name 'Phoenix Slides'
  homepage 'https://blyt.net/phxslides/'

  app 'Phoenix Slides.app'
end
