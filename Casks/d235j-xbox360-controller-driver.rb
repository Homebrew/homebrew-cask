cask :v1 => 'd235j-xbox360-controller-driver' do
  version '0.14'
  sha256 'a7efe48fae89aa592e904d1dc3ba9a73b2d644362eac88feb5e73a774e3fcf88'

  url "https://github.com/d235j/360Controller/releases/download/v#{version}-unofficial/360ControllerInstall_#{version}_unofficial.dmg"
  homepage 'https://github.com/d235j/360Controller'
  license :gpl

  pkg "Install 360 Controller.pkg"

  uninstall :pkgutil => 'com.mice.pkg.Xbox360controller'

  caveats do
    reboot
  end
end
