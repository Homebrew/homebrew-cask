cask 'retroshare' do
  version '0.6.0,20160209-4033f35f'
  sha256 'f568f399a3f2956be0e0137d16fc654af4942a112ba6d297395e07989bd01f92'

  # github.com/RetroShare/RetroShare was verified as official when first introduced to the cask
  url "https://github.com/RetroShare/RetroShare/releases/download/v#{version.before_comma}/Retroshare-#{version.before_comma}-OSX-#{version.after_comma}.dmg"
  appcast 'https://github.com/RetroShare/RetroShare/releases.atom',
          checkpoint: 'd2927acaf91cc42399574ff1805c75bec21b249670e47a7c0e1ef31ee140a875'
  name 'RetroShare'
  homepage 'http://retroshare.sourceforge.net/'

  app "Retroshare#{version.major_minor.no_dots}.app"
end
