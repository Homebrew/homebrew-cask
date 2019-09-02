cask 'scidvsmac' do
  version '4.20'
  sha256 'c4a17efc2a12a1745d2a34bf0f6fc4b1b46eaf98f1f98f365d2dbec583ad9ae9'

  # downloads.sourceforge.net/scidvspc was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/scidvspc/ScidvsMac-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/scidvspc/rss'
  name 'Scid vs. Mac'
  homepage 'https://scidvspc.sourceforge.io/'

  app 'ScidvsMac.app'
end
