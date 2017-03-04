cask 'breakaway' do
  version '2.0.1'
  sha256 'df5a3d42558f9cdc778c434f88f7e062032cf33dd751ef01e6109a9848a7f76a'

  # sourceforge.net/breakaway was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/breakaway/breakaway-#{version}.zip"
  appcast 'https://sourceforge.net/projects/breakaway/rss',
          checkpoint: '073b0d2ddb461bf6abc22c495cd9d8e0693a731d56f1a5949e5d84863c795c5e'
  name 'Breakaway'
  homepage 'http://mutablecode.com/apps/breakaway.html'

  app "breakaway-#{version}/Breakaway.app"
end
