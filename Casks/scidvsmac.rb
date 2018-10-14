cask 'scidvsmac' do
  version '4.19'
  sha256 'c22437ce250cb912924bfea5c24c067dc5385e5d912fde50126c2260dcd9feec'

  # downloads.sourceforge.net/scidvspc was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/scidvspc/ScidvsMac-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/scidvspc/rss'
  name 'Scid vs. Mac'
  homepage 'https://scidvspc.sourceforge.io/'

  app 'ScidvsMac.app'
end
