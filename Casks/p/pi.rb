cask "pi" do
  arch arm: "arm64", intel: "x64"

  version "0.15.10"
  sha256 arm:   "aec4bb74dd5ab0c00c86273ea4bbb0a599f5c9ca5aeef4bfb5e28b46402567a1",
         intel: "38bfa6f6a85eb3165615067f94dba42cb91e9d372daaa29c29ad82add82a78f0"

  url "https://github.com/vastsa/PI-Desktop/releases/download/v#{version}/PI-Desktop-#{version}-#{arch}.dmg"
  name "PI-Desktop"
  desc "Local-first AI coding agent desktop"
  homepage "https://github.com/vastsa/PI-Desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "PI-Desktop.app"

  uninstall quit: "net.aiuo.pi-desktop"
end
