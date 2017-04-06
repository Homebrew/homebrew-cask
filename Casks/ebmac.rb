cask 'ebmac' do
  version '1.40,68_67_938'
  sha256 '4927bcb32604eb7ca6b30aab8c557e974e950b432061d96ef79e204e90929dab'

  # ftp.vector.co.jp was verified as official when first introduced to the cask
  url "http://ftp.vector.co.jp/#{version.after_comma.underscores_to_slashes}/EBMac#{version.major_minor}.dmg"
  name 'EBMac'
  homepage 'http://ebstudio.info/manual/EBMac/'

  app 'EBMac.app'
end
