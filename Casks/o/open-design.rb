cask "open-design" do
  arch arm: "arm64", intel: "x64"

  version "0.22.0"
  sha256 arm:   "a3b585762f67680089adea5942be44e35338cc37c87d1c21e82285e718882479",
         intel: "83d00486178a24a674b23ccc63909a5954390a50b77730e774b5822504a49994"

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
