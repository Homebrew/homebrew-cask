cask "love" do
  version "11.3"
  sha256 "f506af5a6443a559d8edf9b165fd817acb5accdf9873a3be9baf41ab09e0d2d9"

  url "https://github.com/love2d/love/releases/download/#{version}/love-#{version}-macos.zip",
      verified: "github.com/love2d/love/"
  name "LÖVE"
  homepage "https://love2d.org/"

  app "love.app"
  binary "#{appdir}/love.app/Contents/MacOS/love"
end
