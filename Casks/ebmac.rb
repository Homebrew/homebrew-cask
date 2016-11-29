cask 'ebmac' do
  version '1.37'
  sha256 '120b9e1e922d32caf60424c1561b3eb76d7eb8c9e82ad9cd976a53496e514bb7'

  # ftp.vector.co.jp was verified as official when first introduced to the cask
  url "http://ftp.vector.co.jp/67/18/938/EBMac#{version}.dmg"
  name 'EBMac'
  homepage 'http://ebstudio.info/manual/EBMac/'

  app 'EBMac.app'
end
