cask 'ebmac' do
  version '1.42.1,69_76_938'
  sha256 '3a40647b292ebe4eefac3026855026d028d6230abb2a1a5b2a50b9c4ec776b8c'

  # ftp.vector.co.jp was verified as official when first introduced to the cask
  url "http://ftp.vector.co.jp/#{version.after_comma.underscores_to_slashes}/EBMac#{version.before_comma}.dmg"
  name 'EBMac'
  homepage 'http://ebstudio.info/manual/EBMac/'

  depends_on macos: '>= :snow_leopard'

  app 'EBMac.app'
end
