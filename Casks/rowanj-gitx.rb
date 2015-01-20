cask :v1 => 'rowanj-gitx' do
  version :latest
  sha256 :no_check

  # phere.net is the official download host per the vendor homepage
  url 'http://builds.phere.net/GitX/development/GitX-dev.dmg'
  appcast 'https://s3.amazonaws.com/builds.phere.net/GitX/development/GitX-dev.xml'
  homepage 'http://rowanj.github.io/gitx/'
  license :oss

  app 'GitX.app'
  binary 'GitX.app/Contents/Resources/gitx'
end
