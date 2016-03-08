cask 'lovewallpaper' do
  version :latest
  sha256 :no_check

  # qdcdn.com is the official download host per the vendor homepage
  url 'http://s.qdcdn.com/lovebizhi/LoveWallpaper4Mac.dmg'
  name '爱壁纸HD'
  homepage 'https://www.lovebizhi.com/'
  license :gratis

  app 'LoveWallpaper4Mac.app'
end
