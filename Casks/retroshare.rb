cask 'retroshare' do
  version '0.6.4,20180303.9d6e642'
  sha256 'b91b93afd2e002c3001598e57ab62a9f2e0ada047ca041d891a447da1d20d388'

  # github.com/RetroShare/RetroShare was verified as official when first introduced to the cask
  url "https://github.com/RetroShare/RetroShare/releases/download/v#{version.before_comma}/retroshare-#{version.before_comma}_#{version.after_comma}-Mac-OSX.dmg"
  appcast 'https://github.com/RetroShare/RetroShare/releases.atom'
  name 'RetroShare'
  homepage 'https://retroshare.sourceforge.io/'

  app 'retroshare.app'
end
