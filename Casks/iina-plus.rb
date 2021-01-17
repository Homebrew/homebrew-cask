cask "iina-plus" do
  version "0.5.9,20122721"
  sha256 "8b3591630d0b35984e53267e0436e3a54f9b1837c9aa8d17d401d1447201ae86"

  url "https://github.com/xjbeta/iina-plus/releases/download/#{version.before_comma}(#{version.after_comma})/iina+.#{version.before_comma}.dmg"
  appcast "https://github.com/xjbeta/iina-plus/releases.atom"
  name "IINA+"
  desc "Extra danmaku support for iina. (iina 弹幕支持"
  homepage "https://github.com/xjbeta/iina-plus"

  app "iina+.app"
end
