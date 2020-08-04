cask "iina-danmaku" do
  version "1.0.7,12"
  sha256 "9b767dfd63c1f099b73dd735de7a2af0954220818d781832372f5af2fbf3de5a"

  url "https://github.com/xjbeta/iina-danmaku/releases/download/v#{version.before_comma}-Danmaku(#{version.after_comma})/iina.#{version.before_comma}-Danmaku.zip"
  appcast "https://github.com/xjbeta/iina-danmaku/releases.atom"
  name "IINA Danmaku"
  homepage "https://github.com/xjbeta/iina-danmaku"

  app "IINA.app", target: "IINA-danmaku.app"
end
