cask "love" do
  version "11.5"
  sha256 "6795bb3a1656af6a2fdfe741e150787b481886d3a280327a261a3fdded586913"

  url "https://github.com/love2d/love/releases/download/#{version}/love-#{version}-macos.zip",
      verified: "github.com/love2d/love/"
  name "LÖVE"
  desc "2D game framework for Lua"
  homepage "https://love2d.org/"

  app "love.app"
  binary "#{appdir}/love.app/Contents/MacOS/love"

  zap trash: "~/Library/Saved Application State/org.love2d.love.savedState"
end
