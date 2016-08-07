cask 'supersync' do
  version '6.1.1'

  if Hardware::CPU.is_32_bit? || MacOS.release <= :snow_leopard
    sha256 'de1b01b0132e97bd1423907af4e39150e63475b27a4a7e0310cfe2db31f38190'
    url "https://supersync.com/downloads/SuperSync32_#{version}.dmg"
  else
    sha256 '43ca3fa8eebdba63bf9b8f2c17d26f0847e0ae55c114312f606240cbbbf88ce4'
    url "https://supersync.com/downloads/SuperSync_#{version}.dmg"
  end

  name 'SuperSync'
  homepage 'https://supersync.com/'
  license :commercial

  depends_on arch: :intel

  app 'SuperSync.app'
end
