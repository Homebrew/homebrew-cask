cask 'ebmac' do
  version '1.42.2,69_89_938'
  sha256 'b99b673d723f30104d12bc8a9d2fdccc5d8901be5995de5bd722746158d96b8e'

  # ftp.vector.co.jp was verified as official when first introduced to the cask
  url "http://ftp.vector.co.jp/#{version.after_comma.underscores_to_slashes}/EBMac#{version.before_comma}.dmg"
  name 'EBMac'
  homepage 'http://ebstudio.info/manual/EBMac/'

  depends_on macos: '>= :snow_leopard'

  app 'EBMac.app'
end
