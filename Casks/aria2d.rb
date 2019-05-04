cask 'aria2d' do
  version '415,1556113519'
  sha256 'f031ae48b07e46f31df52251aa80f959151a6431697b80c4be2bc40def8fcb0a'

  # dl.devmate.com/com.xjbeta.Aria2D was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.xjbeta.Aria2D/#{version.before_comma}/#{version.after_comma}/Aria2D-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.xjbeta.Aria2D.xml'
  name 'Aria2D'
  homepage 'https://github.com/xjbeta/Aria2D'

  depends_on macos: '>= :sierra'

  app 'Aria2D.app'
end
