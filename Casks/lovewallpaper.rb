cask 'lovewallpaper' do
  version :latest
  sha256 :no_check

  # qdcdn.com/lovebizhi was verified as official when first introduced to the cask
  url 'http://s.qdcdn.com/lovebizhi/LoveWallpaper4Mac.dmg'
  name '爱壁纸HD'
  homepage 'https://www.lovebizhi.com/'

  app 'LoveWallpaper4Mac.app'
end
