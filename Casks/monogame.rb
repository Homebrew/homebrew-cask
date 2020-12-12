cask "monogame" do
  version "3.7.1"
  sha256 "b869b6c71181295db0b245221151dde43b012f23ef3be52b525650f5923cfa87"

  # github.com/MonoGame/MonoGame/ was verified as official when first introduced to the cask
  url "https://github.com/MonoGame/MonoGame/releases/download/v#{version}/MonoGame.pkg"
  appcast "https://github.com/MonoGame/MonoGame/releases.atom"
  name "MonoGame"
  desc "Framework for creating cross-platform games"
  homepage "https://www.monogame.net/"

  pkg "MonoGame.pkg"

  uninstall pkgutil: "com.monogame.*",
            delete:  [
              "/Library/Frameworks/MonoGame.framework",
              "/usr/local/bin/mgcb",
              "/usr/local/bin/monogame-uninstall",
            ]
end
