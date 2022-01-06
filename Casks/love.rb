cask "love" do
  version "11.4"
  sha256 "30ac7db17d9f63398f8f91a7e413a1c38df79f5ebad1ff0012d6e9720961559f"

  url "https://github.com/love2d/love/releases/download/#{version}/love-#{version}-macos.zip",
      verified: "github.com/love2d/love/"
  name "LÖVE"
  desc "2D game framework for Lua"
  homepage "https://love2d.org/"

  app "love.app"
  binary "#{appdir}/love.app/Contents/MacOS/love"
end
