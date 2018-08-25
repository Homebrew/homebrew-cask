cask 'aria2d' do
  version '1.2,1534341053'
  sha256 '1e2649855f2d4c422c3c916be5d6b202d3dca069f979d2a42967208da29978c7'

  # dl.devmate.com/com.xjbeta.Aria2D was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.xjbeta.Aria2D/#{version.before_comma}/#{version.after_comma}/Aria2D-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.xjbeta.Aria2D.xml'
  name 'Aria2D'
  homepage 'https://github.com/xjbeta/Aria2D'

  depends_on macos: '>= :sierra'

  app 'Aria2D.app'
end
