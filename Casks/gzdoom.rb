cask 'gzdoom' do
  version '2.2.0'
  sha256 '38bb7569d05d436b7564a795677e707e573d101bfb3706b75a76fd66f96b2d2b'

  # github.com/coelckers was verified as official when first introduced to the cask
  url "https://github.com/coelckers/gzdoom/releases/download/g#{version}/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom',
          checkpoint: 'fef70e2e3a1fb43ffd48047dc6965896a3b7ccd778800205813b6b52787740e0'
  name 'gzdoom'
  homepage 'https://gzdoom.drdteam.org/'

  app 'GZDoom.app'
end
