cask 'aria2d' do
  version '358,1544709925'
  sha256 '428daaed8dc4843c876eff8449e1630d08e679afcdc8bac84209f018d8a6171c'

  # dl.devmate.com/com.xjbeta.Aria2D was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.xjbeta.Aria2D/#{version.before_comma}/#{version.after_comma}/Aria2D-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.xjbeta.Aria2D.xml'
  name 'Aria2D'
  homepage 'https://github.com/xjbeta/Aria2D'

  depends_on macos: '>= :sierra'

  app 'Aria2D.app'
end
