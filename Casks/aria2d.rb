cask 'aria2d' do
  version '450,1562313341'
  sha256 '1dd2f4cd9382486f420abe9c94f23cef314bc10f5eb8bac3b52e1170d898ef26'

  # dl.devmate.com/com.xjbeta.Aria2D was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.xjbeta.Aria2D/#{version.before_comma}/#{version.after_comma}/Aria2D-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.xjbeta.Aria2D.xml'
  name 'Aria2D'
  homepage 'https://github.com/xjbeta/Aria2D'

  depends_on macos: '>= :sierra'

  app 'Aria2D.app'
end
