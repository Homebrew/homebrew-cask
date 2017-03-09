cask 'ebmac' do
  version '1.39'
  sha256 'cf74bf3ee5a91f77d7bac0f3e140535f35180ac6a820bd102af96409f71d6e60'

  # ftp.vector.co.jp was verified as official when first introduced to the cask
  url "http://ftp.vector.co.jp/68/53/938/EBMac#{version}.dmg"
  name 'EBMac'
  homepage 'http://ebstudio.info/manual/EBMac/'

  app 'EBMac.app'
end
