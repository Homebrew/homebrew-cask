cask 'aria2d' do
  version '1.2'
  sha256 'd4dd0fcaf5f90862a114c33269707c11c2bd6b157de88048b0e4353a86f159b2'

  # dl.devmate.com/com.xjbeta.Aria2D was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/com.xjbeta.Aria2D/Aria2D.dmg'
  appcast 'https://updates.devmate.com/com.xjbeta.Aria2D.xml'
  name 'Aria2D'
  homepage 'https://github.com/xjbeta/Aria2D'

  depends_on macos: '>= :sierra'

  app 'Aria2D.app'
end
