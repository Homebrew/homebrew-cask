cask "hoppscotch" do
  arch arm: "aarch64", intel: "x64"

  version "26.8.1-0"
  sha256 arm:   "01a84e22e36eef5d03035426f0a92d08e53814c957be33b102ee1c8f9801d80f",
         intel: "ba328802b682fcf662aa0fd89183a4d9d4ae23dd2daaa2d42ec1e4087c860068"

  url "https://github.com/hoppscotch/releases/releases/download/v#{version}/Hoppscotch_mac_#{arch}.dmg"
  name "Hoppscotch"
  desc "Open source API development ecosystem"
  homepage "https://hoppscotch.com/"

  conflicts_with cask: "hoppscotch-selfhost"
  depends_on :macos

  app "Hoppscotch.app"

  uninstall quit: "io.hoppscotch.desktop"

  zap trash: [
    "~/Library/Application Support/io.hoppscotch.desktop",
    "~/Library/Caches/io.hoppscotch.desktop",
    "~/Library/Saved Application State/io.hoppscotch.desktop.savedState",
    "~/Library/WebKit/io.hoppscotch.desktop",
  ]
end
