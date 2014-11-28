cask :v1 => 'd235j-xbox360-controller-driver' do
  version '0.14'
  sha256 '520d78f43006202956a985c073bac901e85151361fdecb9af37f94b61e3effeb'

  url 'https://github.com/d235j/360Controller/releases/download/v0.14_beta_unofficial/Install360Controller_0.14_yosemite_beta_unofficial.pkg'
  homepage 'https://github.com/d235j/360Controller'
  license :gpl

  pkg 'Install360Controller.pkg'

  uninstall :pkgutil => 'com.mice.pkg.Xbox360controller'
end
