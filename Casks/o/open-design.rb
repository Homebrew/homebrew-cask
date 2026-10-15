cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.25.0"
  sha256 arm:   "171841cd5451c7890a09e5556e3023d78362557ac33201a5e202a725f53fdd83",
         intel: "269f0414544cbf74b3d2c7e9cc223d53aa36bd8556b4b883991e1862e7776b8f"

  url "https://github.com/nexu-io/open-design/releases/download/open-design-v#{version}/open-design-#{version}-mac-#{arch}.dmg"
  name "Open Design"
  desc "Local-first, agent-native design tool"
  homepage "https://open-design.ai/"

  livecheck do
    url :url
    regex(/open-design[._-]v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :monterey

  app "Open Design.app"

  zap trash: [
    "~/Library/Application Support/Open Design",
    "~/Library/Preferences/io.open-design.desktop.plist",
  ]
end
