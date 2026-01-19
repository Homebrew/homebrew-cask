cask "setalias" do
  version "2.3.1"
  sha256 "063426d1727df7786234e637774e79b773ec6ece697cb29de0b2986eb37db478"

  url "https://github.com/rixingyike/homebrew-setalias/releases/download/v2.3.1/SetAlias.dmg"
  name "SetAlias"
  desc "程序员喜欢用的终端写作工具"
  homepage "https://github.com/rixingyike/homebrew-setalias"

  app "SetAlias.app"

  zap trash: [
    "~/.setalias",
    "~/Library/Application Support/SetAlias",
  ]
end
