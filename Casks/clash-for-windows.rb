cask "clash-for-windows" do
  arch arm: "-arm64"

  version "0.20.11"
  sha256 arm:   "663052974e897ffac6fff61814a35edd385c61a5273466dbd76b6897c3e6b27b",
         intel: "aa1c7b3ef68e4b38de9bdc4f670d4b801aefe85e06f820f916bbeb1e5e69b963"

  url "https://github.com/Fndroid/clash_for_windows_pkg/releases/download/#{version}/Clash.for.Windows-#{version}#{arch}.dmg"
  name "Clash for Windows"
  desc "GUI based on Clash"
  homepage "https://github.com/Fndroid/clash_for_windows_pkg"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Clash for Windows.app"
end
