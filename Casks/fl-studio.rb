cask 'fl-studio' do
  version '20.0.99.123'
  sha256 'b84de41ab59d98f3cc61e0d79a1e22c6f29f5cafbf3e8729a74a754f3aff9f15'

  url "http://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  name 'FL Studio'
  homepage 'https://www.image-line.com/flstudio/'

  pkg 'Install FL Studio.pkg'

  uninstall pkgutil: 'com.Image-Line.pkg.FLStudio64'
end
