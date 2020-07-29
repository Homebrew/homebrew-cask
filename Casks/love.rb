cask "love" do
  version "11.3"
  sha256 "f506af5a6443a559d8edf9b165fd817acb5accdf9873a3be9baf41ab09e0d2d9"

  # bitbucket.org/rude/love/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/rude/love/downloads/love-#{version}-macos.zip"
  appcast "https://love2d.org/"
  name "LÖVE"
  homepage "https://love2d.org/"

<<<<<<< HEAD
  app 'love.app'
  binary 'love.app/Contents/MacOS/love'
=======
  app "love.app"
  binary "#{appdir}/love.app/Contents/MacOS/love"
>>>>>>> upstream/core-code-patch-2
end
