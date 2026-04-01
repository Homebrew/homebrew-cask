cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.3.37"
  sha256 arm:   "ed763ceb9b195747b5e5a9ee5d75aa7456a7255dd8f9f58606aa9405c2ce0ebf",
         intel: "06cbdc54dcfd69cc8be3a80b2b555ff61385d36a11f8c723557bd6dc7d6501bc"

  url "https://releases.chatwise.app/#{version}/ChatWise-#{version}-#{arch}.dmg"
  name "ChatWise"
  desc "AI chatbot for many LLMs"
  homepage "https://chatwise.app/"

  livecheck do
    url "https://releases.chatwise.app/releases"
    strategy :json do |json|
      json.map { |v| v["version"] }
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "ChatWise.app"

  uninstall quit: "app.chatwise"

  zap trash: [
    "~/Library/Application Support/app.chatwise",
    "~/Library/Caches/app.chatwise",
    "~/Library/Saved Application State/app.chatwise.savedState",
    "~/Library/WebKit/app.chatwise",
  ]
end
