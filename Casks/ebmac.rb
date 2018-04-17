cask 'ebmac' do
  version '1.43,70_19_938'
  sha256 '2f665b2aa17b7841f3fb2dc015f48045e39ba966d78d435b20427982d5b4ab91'

  # ftp.vector.co.jp was verified as official when first introduced to the cask
  url "http://ftp.vector.co.jp/#{version.after_comma.underscores_to_slashes}/EBMac#{version.before_comma}.dmg"
  name 'EBMac'
  homepage 'http://ebstudio.info/manual/EBMac/'

  depends_on macos: '>= :snow_leopard'

  app 'EBMac.app'
end
