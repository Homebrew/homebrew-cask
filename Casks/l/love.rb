cask "love" do
  version "11.5"
  sha256 "c8ff4b57274b87772a91af4efa532721848b935eef1e0b72ac0464fb177631a5"

  url "https://github.com/love2d/love/releases/download/#{version}/love-#{version}-macos.zip",
      verified: "github.com/love2d/love/"
  name "LÖVE"
  desc "2D game framework for Lua"
  homepage "https://love2d.org/"

  app "love.app"
  binary "#{appdir}/love.app/Contents/MacOS/love"

  zap trash: "~/Library/Saved Application State/org.love2d.love.savedState"
end
