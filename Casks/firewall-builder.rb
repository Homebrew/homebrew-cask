class FirewallBuilder < Cask
  version '5.1.0.3599'
  sha256 '447e05956fdfe676e87a10ac2f81259d0e00f519bbf66da38e7f1b0c922f85f3'

  url 'http://downloads.sourceforge.net/sourceforge/fwbuilder/fwbuilder-5.1.0.3599.dmg'
  homepage 'http://www.fwbuilder.org'

  link 'fwbuilder-5.1.0.3599.app', :target => 'Firewall Builder.app'
end
