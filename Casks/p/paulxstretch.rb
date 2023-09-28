cask "paulxstretch" do
  version "1.6.0"
  sha256 "c5bcba5215076f629c3442902eaba4825a7f71ac33fc2d793c7cb729bdeb17ad"

  url "https://sonosaurus.com/paulxstretch/releases/paulxstretch-#{version}-mac.dmg"
  name "paulxstretch"
  desc "Extreme time stretching plugin for audio files"
  homepage "https://sonosaurus.com/paulxstretch/"

  pkg "PaulXStretch Installer.pkg"
  uninstall pkgutil: "com.sonosaurus.paulxstretch.pkg.app"
  uninstall pkgutil: "com.sonosaurus.paulxstretch.pkg.au"
  uninstall pkgutil: "com.sonosaurus.paulxstretch.pkg.vst3"
  uninstall pkgutil: "com.sonosaurus.paulxstretch.pkg.axx"
end
