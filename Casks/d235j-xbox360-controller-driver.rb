class D235jXbox360ControllerDriver < Cask
  version '0.13.1'
  sha256 'f324341a11ba5588b71fd246e5b6d79189abb886cf641d96650133cadbc293f9'

  url "https://github.com/d235j/360Controller/releases/download/v#{version}-unofficial/360ControllerInstall_#{version}_unofficial.dmg"
  homepage 'https://github.com/d235j/360Controller'
  license :gpl

  pkg 'Install360Controller.pkg'
  uninstall :pkgutil => 'com.mice.pkg.Xbox360controller'
end
