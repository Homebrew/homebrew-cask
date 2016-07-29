cask 'fwbuilder' do
  version '5.1.0.3599'
  sha256 '447e05956fdfe676e87a10ac2f81259d0e00f519bbf66da38e7f1b0c922f85f3'

  # sourceforge.net/sourceforge/fwbuilder was verified as official when first introduced to the cask
  url "http://downloads.sourceforge.net/sourceforge/fwbuilder/fwbuilder-#{version}.dmg"
  name 'Firewall Builder'
  homepage 'http://www.fwbuilder.org'
  license :gpl

  app "fwbuilder-#{version}.app"
end
