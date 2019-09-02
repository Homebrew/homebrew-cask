cask 'buddi' do
  version '3.4.1.16'
  sha256 'a8731374d07a245556a286bf72c15d30a414bc28fcaa8d72e551e0d638adff73'

  # downloads.sourceforge.net/buddi was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/buddi/Buddi%20%28Stable%29/#{version}/Buddi-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/buddi/rss'
  name 'Buddi'
  homepage 'http://buddi.digitalcave.ca/'

  app 'Buddi.app'
end
