cask "iina-plus" do
  version "0.5.4,20112920"
  sha256 "81d3e6257abbf09b71319821732b30ad3917d5f888190706792f9eff19482ee4"

  url "https://github.com/xjbeta/iina-plus/releases/download/#{version.before_comma}(#{version.after_comma})/iina+.#{version.before_comma}.dmg"
  appcast "https://github.com/xjbeta/iina-plus/releases.atom"
  name "IINA+"
  desc "Extra danmaku support for iina. (iina 弹幕支持"
  homepage "https://github.com/xjbeta/iina-plus"

  app "iina+.app"
end
