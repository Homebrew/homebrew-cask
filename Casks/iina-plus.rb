cask "iina-plus" do
  version "0.5.14,21031821"
  sha256 "24d5c4532823b30ee29f342069da97ae33e878b021fe1ebd26dd3c32dc3fdc16"

  url "https://github.com/xjbeta/iina-plus/releases/download/#{version.before_comma}(#{version.after_comma})/iina+.#{version.before_comma}.dmg"
  appcast "https://github.com/xjbeta/iina-plus/releases.atom"
  name "IINA+"
  desc "Extra danmaku support for iina. (iina 弹幕支持"
  homepage "https://github.com/xjbeta/iina-plus"

  app "iina+.app"
end
