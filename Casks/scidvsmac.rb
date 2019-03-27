cask 'scidvsmac' do
  version '4.20'
  sha256 'c948fc858ef685ee71f7941bc69ff53a72b48e28bd589a94e21b978eac3aa6e8'

  # downloads.sourceforge.net/scidvspc was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/scidvspc/ScidvsMac-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/scidvspc/rss'
  name 'Scid vs. Mac'
  homepage 'https://scidvspc.sourceforge.io/'

  app 'ScidvsMac.app'
end
