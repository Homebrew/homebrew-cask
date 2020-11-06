cask "iina-plus" do
  version "0.5.3,20101309"
  sha256 "f64fe67ad13ca29fc22b3aecd80536216437eb6b6b77a53f8db57850c2af612e"

  url "https://github.com/xjbeta/iina-plus/releases/download/#{version.before_comma}(#{version.after_comma})/iina+.#{version.before_comma}.zip"
  appcast "https://github.com/xjbeta/iina-plus/releases.atom"
  name "IINA+"
  desc "Extra danmaku support for iina. (iina 弹幕支持"
  homepage "https://github.com/xjbeta/iina-plus"

  app "iina+.app"
end
