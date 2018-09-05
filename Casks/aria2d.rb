cask 'aria2d' do
  version '1.2.1,1535339003'
  sha256 '8338d48fa8c90c8f785568b7b16ca86613b6a8c64d107933a1bc72d6aa401e25'

  # dl.devmate.com/com.xjbeta.Aria2D was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.xjbeta.Aria2D/#{version.before_comma}/#{version.after_comma}/Aria2D-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.xjbeta.Aria2D.xml'
  name 'Aria2D'
  homepage 'https://github.com/xjbeta/Aria2D'

  depends_on macos: '>= :sierra'

  app 'Aria2D.app'
end
