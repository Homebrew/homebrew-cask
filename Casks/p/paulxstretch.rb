cask "paulxstretch" do
  version "1.6.0"
  sha256 "c5bcba5215076f629c3442902eaba4825a7f71ac33fc2d793c7cb729bdeb17ad"

  url "https://github.com/essej/paulxstretch/releases/download/v#{version}/paulxstretch-#{version}-mac.dmg"
  name "paulxstretch"
  desc "Extreme time stretching plugin for audio files"
  homepage "https://github.com/essej/paulxstretch"

  livecheck do
    strategy :github_latest
  end

  pkg "PaulXStretch Installer.pkg"

  uninstall pkgutil: "com.sonosaurus.paulxstretch.pkg.*"
end
