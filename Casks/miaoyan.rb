cask "miaoyan" do
  version "0.5.0"
  sha256 "b95f8c3b64bd1aaa3e441ee72bd0ce3042b3882a2fe3deabce8e027fcf63310a"

  url "https://github.com/tw93/MiaoYan/releases/download/V#{version}/MiaoYan-V#{version}.dmg",
      verified: "github.com/tw93/MiaoYan"
  name "MiaoYan"
  desc "⛷ Lightweight Markdown app to help you write great sentences"
  homepage "https://miaoyan.vercel.app/"

  app "MiaoYan.app"
end
