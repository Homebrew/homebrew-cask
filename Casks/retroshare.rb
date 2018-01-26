cask 'retroshare' do
  version '0.6.3,20170821-cebcc4b4'
  sha256 'ea908eb98f3af69486b4b950635dff9774c004488bdb950db27f8bac92bdf45a'

  # github.com/RetroShare/RetroShare was verified as official when first introduced to the cask
  url "https://github.com/RetroShare/RetroShare/releases/download/v#{version.before_comma}/Retroshare-#{version.before_comma}-OSX-#{version.after_comma}.dmg"
  appcast 'https://github.com/RetroShare/RetroShare/releases.atom',
          checkpoint: '336c2f3110552dfc7a2b18807ea2273cbfa837e2b4df1a26e295e055fc44b152'
  name 'RetroShare'
  homepage 'http://retroshare.sourceforge.net/'

  app 'retroshare.app'
end
