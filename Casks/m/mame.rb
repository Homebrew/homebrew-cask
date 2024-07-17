cask "mame" do
  version "0.135"
  sha256 "fce1a45e53e0f6bc2ef20e5b6fc84bd48806f1bc2a38acec57fd9fafe7e2af7e"

  url "https://downloads.sourceforge.net/mameosx/MAMEOSX-#{version}.dmg"
  name "MAME"
  desc "Port of the multi-purpose emulation framework"
  homepage "https://sourceforge.net/projects/mameosx/"

  disable! date: "2024-07-16", because: "is 32-bit only"

  app "MAME OS X.app"
end
