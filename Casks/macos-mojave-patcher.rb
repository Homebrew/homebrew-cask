cask 'macos-mojave-patcher' do
  version '1.3.7'
  sha256 'ecffb5e6e028ec8bd96fa24ed87e3cdcd0df0cf864e3f8d75bc5ed27083a2ab0'

  # gateway.pinata.cloud was verified as official when first introduced to the cask
  url 'https://gateway.pinata.cloud/ipfs/Qmds4TpDcAXszxMMACdBYK7XA8ih2kBoiuV2ZWejebgzgY/macOS%20Mojave%20Patcher.dmg'
  name 'macOS Mojave Patcher'
  homepage 'http://dosdude1.com/mojave/'

  app 'macOS Mojave Patcher.app'
end
