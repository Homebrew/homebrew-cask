cask 'fwbuilder' do
  version '5.1.0.3599'
  sha256 '447e05956fdfe676e87a10ac2f81259d0e00f519bbf66da38e7f1b0c922f85f3'

  # sourceforge.net/fwbuilder was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/fwbuilder/fwbuilder-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/fwbuilder/rss',
          checkpoint: '7b84fcbff4ef7cfed656e80d66efa692e1d533c964089fff4585886329bd0807'
  name 'Firewall Builder'
  homepage 'http://www.fwbuilder.org/'

  app "fwbuilder-#{version}.app"
end
