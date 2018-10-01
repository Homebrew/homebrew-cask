cask 'aria2d' do
  version :latest
  sha256 :no_check

  # dl.devmate.com/com.xjbeta.Aria2D was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.xjbeta.Aria2D/Aria2D.zip'
  appcast 'https://updates.devmate.com/com.xjbeta.Aria2D.xml'
  name 'Aria2D'
  homepage 'https://github.com/xjbeta/Aria2D'

  depends_on macos: '>= :sierra'

  app 'Aria2D.app'
end
