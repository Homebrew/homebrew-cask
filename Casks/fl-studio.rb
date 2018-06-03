cask 'fl-studio' do
  version '20.0.1.22'
  sha256 'e179bf161ec9bf704ccdb6ef7bd89157a81e4440d956b13e01bb1aaeb25be098'

  url "http://demodownload.image-line.com/flstudio/flstudio_mac_#{version}.dmg"
  name 'FL Studio'
  homepage 'https://www.image-line.com/flstudio/'

  pkg 'Install FL Studio.pkg'

  uninstall pkgutil: 'com.Image-Line.pkg.FLStudio64'
end
