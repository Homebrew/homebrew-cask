cask "iina-plus" do
  version "0.5.2,20080222"
  sha256 "9daac4df85524a024d092e13ca3bd1f08c1d1be6127b078ffe9a201efa363315"

  url "https://github.com/xjbeta/iina-plus/releases/download/#{version.before_comma}(#{version.after_comma})/iina+.#{version.before_comma}.zip"
  appcast "https://github.com/xjbeta/iina-plus/releases.atom"
  name "IINA+"
  desc "Extra danmaku support for iina. (iina 弹幕支持"
  homepage "https://github.com/xjbeta/iina-plus"

  app "iina+.app"
end
