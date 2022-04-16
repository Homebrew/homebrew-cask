cask "love" do
  version "11.4"
  sha256 "04896021cbe5f1f8548f26d2ab9251128699510d2676a6ef3d544a3d99d6f7c0"

  url "https://github.com/love2d/love/releases/download/#{version}/love-#{version}-macos.zip",
      verified: "github.com/love2d/love/"
  name "LÖVE"
  desc "2D game framework for Lua"
  homepage "https://love2d.org/"

  app "love.app"
  binary "#{appdir}/love.app/Contents/MacOS/love"
end
