cask "bongocat" do
    version "0.6.1"
  
    if Hardware::CPU.intel?
      url "https://gh-proxy.com/github.com/ayangweb/BongoCat/releases/latest/download/BongoCat_x64.app.tar.gz"
      sha256 "051125432deb49861d60987247719a9b8ff26ea1c864037cdc7243ffa42076b7"
    else
      url "https://gh-proxy.com/github.com/ayangweb/BongoCat/releases/latest/download/BongoCat_aarch64.app.tar.gz"
      sha256 "64de4402e2ba49f958f37d814bafd3ced022fd95b32ed9f352b0dfa40cfd7920"
    end
  
    name "BongoCat"
    desc "🐱 跨平台桌宠 BongoCat，为桌面增添乐趣！"
    homepage "https://github.com/ayangweb/BongoCat"
  
    app "BongoCat.app"
  end 