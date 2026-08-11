cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.19.0"
  sha256 arm:   "2c55ebfc724e36cc0527aef92292698689b315b9aabc4d769c5bb867e60fc411",
         intel: "f67e3067deac6e6b78c1956872d5e3580cf937ff470466ebacee6621dc2958d3"

  url "https://github.com/nexu-io/open-design/releases/download/open-design-v#{version}/open-design-#{version}-mac-#{arch}.dmg",
      verified: "github.com/nexu-io/open-design/"
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
